package blog.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.PageBean;
import blog.pojo.User;
import blog.service.impl.ArticleServiceImpl;
import blog.service.impl.IndexServiceImpl;

@Controller
public class IndexController {
	
	@Autowired
	private ArticleServiceImpl articleService;
	@Autowired
	private IndexServiceImpl indexService;
	
	//准备文章
	@RequestMapping(value="/index.action")
	public String index(HttpServletRequest request,HttpServletResponse response,Model model) {
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr == null) currentPageStr = "1";
		int currentPage = Integer.parseInt(currentPageStr);
		int currentCount = 10;
		PageBean<Article> pageBean = null;
		
		pageBean = articleService.findPageBean(currentPage,currentCount);
		model.addAttribute("pageBean", pageBean);
		
		return "index";
	}
	
	@RequestMapping(value="/categories.action")
	public String categories(Model model) {
		List<Category> categroy = indexService.getCategroy();
		int size = categroy.size();
		model.addAttribute("size", size);
		model.addAttribute("categroyList", categroy);
		return "categories";
	}
	
	//文章分类显示
	@RequestMapping(value="/categroy_list")
	public String categories_list(Integer cat_id,Model model) {
		List<Article> categroy_list = indexService.getCategroy_list(cat_id);
		
		for (Article article : categroy_list) {
			System.out.println(article.getTitle());
			System.out.println(article.getArt_time());
		}
		
		model.addAttribute("categroy_list", categroy_list);
		return "categories_list";
		
	}
	
	//由文章分类到显示文章
	@RequestMapping(value="/article")
	public String article(Integer art_id,Model model) {
		Article article = articleService.getArticleById(art_id);
		//当前文章前一篇文章
		Article preArticleById = articleService.getPreArticleById(art_id);
		//当前文章下一篇文章
		Article postArticleById = articleService.getPostArticleById(art_id);
		
		model.addAttribute("article", article);
		model.addAttribute("preArticleById", preArticleById);
		model.addAttribute("postArticleById", postArticleById);
		
		return "article";
		
	}
	
	@RequestMapping(value="/ajax.action")
	public @ResponseBody
	Map json() {
		
		Map<String,Integer> map = new HashMap<>();
		
		int articleCount = articleService.getArticleTotalCount();
		int categoryCount = articleService.getCategoryTotalCount();
		map.put("articleCount", articleCount);
		map.put("categoryCount", categoryCount);
		
		System.out.println(articleCount);
		System.out.println(categoryCount);
		return map;
		
	}
	
	//提交评论
	@RequestMapping(value="/saveComment",method=RequestMethod.POST)
	public void saveComment(@RequestBody Map comment,HttpSession session) {
		System.out.println(comment);
		User user = (User) session.getAttribute("user");
		Comment comm = new Comment();
		comm.setComment((String) comment.get("comment"));
		comm.setUser_id(user.getUser_id());
		articleService.saveComment(comm);
		
	}
	
	
	//显示评论
	@RequestMapping(value="/comments")
	public String comment(Model model,HttpServletRequest request) {
		
		String currentPageStr = request.getParameter("currentPage");
		if(currentPageStr == null) currentPageStr = "1";
		int currentPage = Integer.parseInt(currentPageStr);
		int currentCount = 10;
		PageBean<Comment> pageBean = null;
		pageBean = articleService.findCommentByPageBean(currentPage,currentCount);

		model.addAttribute("pageBean", pageBean);
		return "comment";
			
		}
	
	
}
