package blog.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.User;
import blog.pojo.vo.ArticleVO;
import blog.pojo.vo.CommentVO;
import blog.service.ArticleService;
import blog.service.IndexService;

@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	private IndexService indexService;
	@Autowired
	private ArticleService articleService;
	
	//提交文章
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public void save(@RequestBody Map article) {
		System.out.println(article.get("cat_id"));
		System.out.println(article.get("title"));
		System.out.println(article.get("content"));
		articleService.writeBlog(article);
	
	}
	
	@RequestMapping(value="writeBlog")
	public String writeBlog(Model model) {
		List<Category> categroy = indexService.getCategroy();		
		model.addAttribute("categroy", categroy);
		
		return "forward:/admin/writeBlog.jsp";
		
	}
	
	@RequestMapping(value="/blogManage")
	public @ResponseBody List<ArticleVO> blogManage() {
		List<ArticleVO> articleList = articleService.findAllArticle();		
		return articleList;
		
	}
	
	@RequestMapping(value="/listBlogType")
	public @ResponseBody List<Category> listBlogType(Model model) {
		List<Category> categoryList = indexService.getAllCategory();		
		return categoryList;
		
	}
	
	 @RequestMapping(value = "delete")
	    public @ResponseBody Map<String,Boolean> deleteBlog(@RequestParam("ids")String ids,HttpServletResponse response) throws Exception {
	        String[] idsStr = ids.split(",");
	        for(int i = 0; i < idsStr.length; i++) {
	            int id = Integer.parseInt(idsStr[i]);
	            articleService.deleteBlog(id);
	        }
	        Map<String,Boolean> map = new HashMap<>();
	        map.put("success", true);
	        
	        return map;
	    }
	 
	 //打开修改文章的页面。
	 @RequestMapping(value="modifyBlogURL")
		public String modifyBlogURL(Model model,@RequestParam("id")String id) {
			List<Category> categroy = indexService.getCategroy();		
			model.addAttribute("categroy", categroy);
			model.addAttribute("id", id);
			
			return "forward:/admin/modifyBlog.jsp";
			
		}
	 //根据文章id，查询文章内容并将信息回显到页面
	 @RequestMapping(value = "/modifyBlog")
	   public @ResponseBody Article modifyBlog(@RequestParam("id")String id)  {
	       return articleService.getArticleById(Integer.parseInt(id));
		 	
	   }
	 //提交修改文章内容
	 @RequestMapping(value = "/updateArticle")
	   public void updateArticle(@RequestBody Article article)  {
	       articleService.updateArticle(article);		 	
	   }
	 
	 //添加或者修改文章分类
	 @RequestMapping(value = "/blogTypeSave")
	   public @ResponseBody Map<String,Boolean> blogTypeSave(Category category)  {
		
		 Map<String,Boolean> map = new HashMap<>();	
		 //如果传入的category对象没有id值，则为新建的值，为添加操作
		 System.out.println(category.getCat_name());
	       if(category.getCat_id() == null)	{
	    	   int addCategory = articleService.addCategory(category);
	    	   if(addCategory == 1) {
	    		   map.put("message", true);
	    	   }else {
	    		   map.put("message", false);
	    	   }
	       }else {
	    	   int addCategory = articleService.updateCategory(category);
	    	   if(addCategory == 1) {
	    		   map.put("message", true);
	    	   }else {
	    		   map.put("message", false);
	    	   }
	       }
	       return map;
	   }
	 //删除分类
	 @RequestMapping(value = "/blogTypeDelete" )
	    public @ResponseBody Map<String,Boolean> blogTypeDelete(
	            @RequestParam(value = "ids", required = false) String ids)  {
		 
		 Map<String,Boolean> map = new HashMap<>();
		 	String[] idsStr = ids.split(",");
	      
	        for (int i = 0; i < idsStr.length; i++) {
	            int id = Integer.parseInt(idsStr[i]);
	            System.out.println(id);
	            if(articleService.getArticleByCatId(id) > 0) { //说明该类别中有博客
	                map.put("exist", true);
	                break;
	            } else {
	            	int category = articleService.deleteCategory(id);
	            	if(category == 1) {
	 	    		   map.put("message", true);
	 	    	   }else {
	 	    		   map.put("message", false);
	 	    	   }
	            }
	        }
	        return map;
	        
	    }
	 
	 //显示所有评论
	 @RequestMapping(value = "/commentList" )
	    public @ResponseBody List<CommentVO> commentList()  {
		 	
		 	List<CommentVO> comment = articleService.getAllCommentVO();
		 	
		 	return comment;
	        
	    }
	 
	//删除评论
	 @RequestMapping(value = "/commentDelete" )
	 public @ResponseBody Map<String,Boolean> commentDelete(
		         @RequestParam(value = "ids", required = false) String ids)  {
			 
			 Map<String,Boolean> map = new HashMap<>();
			 	String[] idsStr = ids.split(",");
		      
		        for (int i = 0; i < idsStr.length; i++) {
		            int id = Integer.parseInt(idsStr[i]);
		            if(articleService.commentDeleteById(id)>0) {
		            	map.put("message", true);
		            	System.out.println("true");
		            }else {
		            	map.put("message", false);
		            }
		        }
		    
		        return map;
		        
		    }
	 
	 
	    
	    
	    
	

	
}
