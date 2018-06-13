package blog.service;

import java.util.List;
import java.util.Map;
import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.PageBean;
import blog.pojo.vo.ArticleVO;
import blog.pojo.vo.CommentVO;

public interface ArticleService {
	
	//主页内容
	PageBean<Article> findPageBean(int currentPage, int currentCount);
	
	//文章页面内容
	Article getArticleById(Integer art_id);
	
	//当前文章上一篇文章
	Article getPreArticleById(Integer art_id);
	
	//当前文章下一篇文章
	Article getPostArticleById(Integer art_id);
	
	//文章总数
	public int getArticleTotalCount();
	
	//分类总数
	public int getCategoryTotalCount();
	
	//写博客
	public int writeBlog(Map article);
	
	//写评论
	public int saveComment(Comment comment);

	//看评论
	public List<Comment> findComment();
	
	//评论分页
	public PageBean<Comment> findCommentByPageBean(int currentPage,int currentCount);
	//后台页面获取文章
	List<ArticleVO> findAllArticle();
	//删除文章
	int deleteBlog(int id);

	void updateArticle(Article article);
	//增加分类
	int addCategory(Category category);
	//修改分类
	int updateCategory(Category category);
	//判断此分类是否有文章存在
	int getArticleByCatId(int id);
	//删除分类
	int deleteCategory(int id);
	//获取所有评论
	List<CommentVO> getAllCommentVO();
	//删除评论
	int commentDeleteById(int id);
	
}
