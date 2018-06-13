package blog.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.vo.ArticleVO;
import blog.pojo.vo.CommentVO;

@Repository
public interface ArticleMapper {
	//文章总数
	public int getTotalCount();
	//根据分页获取文章
	List<Article> findArticelForPageBean(@Param("index") int index, @Param("currentCount") int currentCount);
	
	//根据id获取当前文章
	public Article getArticleById(Integer art_id);
	
	//当前文章上一篇文章	
	public Article getPreArticleById(Integer art_id);
			

	//当前文章下一篇文章		
	public Article getPostArticleById(Integer art_id); 
	
	//分类总数
	public int getCategoryTotalCount();
	
	//写博客
	public int writeBlog(Map article);
	//写评论
	public int saveComment(Comment comment);
	//看评论
	public List<Comment> findComment();
	//查询评论总条数
	public int getCommentTotalCount();
	public List<Comment> getCommentByPageBean(@Param("index") int index,@Param("currentCount") int currentCount);
	//查询所有文章
	public List<ArticleVO> findAllArticle();
	//删除文章
	public int deleteBlog(int id);
	//更新文章
	public void updateArticle(Article article);
	//增加分类
	public int addCategory(Category category);
	//修改分类
	public int updateCategory(Category category);
	//判断从分类是否有文字
	public int getArticleByCatId(int cat_id);
	//删除分类
	public int deleteCategory(int cat_id);
	//获取所有评论
	public List<CommentVO> getAllCommentVO();
	//删除评论
	public int commentDeleteById(int com_id);
	

}
