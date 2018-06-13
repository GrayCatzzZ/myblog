package blog.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.mapper.ArticleMapper;
import blog.pojo.Article;
import blog.pojo.Category;
import blog.pojo.Comment;
import blog.pojo.PageBean;
import blog.pojo.vo.ArticleVO;
import blog.pojo.vo.CommentVO;
import blog.service.ArticleService;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleMapper articleMapper;
	
	@Override
	public PageBean<Article> findPageBean(int currentPage, int currentCount) {
		//目的：就是想办法封装一个PageBean 并返回
		PageBean<Article> pageBean = new PageBean<>();
		//1、当前页private int currentPage;
		pageBean.setCurrentPage(currentPage);
		//2、当前页显示的条数private int currentCount;
		pageBean.setCurrentCount(currentCount);
		//3、总条数private int totalCount;
		int totalCount = articleMapper.getTotalCount();
		pageBean.setTotalCount(totalCount);
		//4、总页数private int totalPage;
		int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
		pageBean.setTotalPage(totalPage);
		//5、每页显示的数据private List<T> productList = new ArrayList<T>();
		//索引index = (当前页数-1)*每页显示的条数
		int index = (currentPage-1)*currentCount;
		List<Article> articleList = new ArrayList<>();
		articleList = articleMapper.findArticelForPageBean(index,currentCount);
		pageBean.setArticlectList(articleList);
		
		return pageBean;
	}

	
	//根据文章id到文章页面
	@Override
	public Article getArticleById(Integer art_id) {
		Article article = articleMapper.getArticleById(art_id);
		return article;
	}

	//当前文章上一篇文章
	@Override
	public Article getPreArticleById(Integer art_id) {
		Article preArticleById = articleMapper.getPreArticleById(art_id);
		return preArticleById;
	}

	//当前文章下一篇文章
	@Override
	public Article getPostArticleById(Integer art_id) {
		Article postArticleById = articleMapper.getPostArticleById(art_id);
		return postArticleById;
	}


	@Override
	public int getArticleTotalCount() {
		return  articleMapper.getTotalCount();
		
	}


	@Override
	public int getCategoryTotalCount() {		
		return articleMapper.getCategoryTotalCount();
	}
	
	//写博客
	public int writeBlog(Map article) {
		return articleMapper.writeBlog(article);
		
	}


	@Override
	public int saveComment(Comment comment) {
		
		return articleMapper.saveComment(comment);
	}


	@Override
	public List<Comment> findComment() {
		return articleMapper.findComment();
		
	}

	//根据分页显示评论显示
	public PageBean<Comment> findCommentByPageBean(int currentPage,int currentCount) {
		
		PageBean<Comment> pageBean = new PageBean<Comment>();
		pageBean.setCurrentPage(currentPage);
		pageBean.setTotalCount(currentCount);
		//查询总条数
		int totalCount = articleMapper.getCommentTotalCount();
		pageBean.setTotalCount(totalCount);
		//总页数
		int totalPage = (int) Math.ceil(1.0*totalCount/currentCount);
		pageBean.setTotalPage(totalPage);
		//根据页数查询评论
		int index = (currentPage-1)*currentCount;
		List<Comment> commentPage = new ArrayList<Comment>();
		commentPage = articleMapper.getCommentByPageBean(index,currentCount);
		pageBean.setArticlectList(commentPage);
		
		return pageBean;
	}


	@Override
	public List<ArticleVO> findAllArticle() {
		return articleMapper.findAllArticle();
		 
	}


	@Override
	public int deleteBlog(int id) {
		return articleMapper.deleteBlog(id);
	}


	@Override
	public void updateArticle(Article article) {
		articleMapper.updateArticle(article);
		
	}


	@Override
	public int addCategory(Category category) {
		return articleMapper.addCategory(category);
		
	}


	@Override
	public int updateCategory(Category category) {
		return articleMapper.updateCategory(category);
	}


	@Override
	public int getArticleByCatId(int id) {
		return articleMapper.getArticleByCatId(id);
	}


	@Override
	public int deleteCategory(int id) {
		return articleMapper.deleteCategory(id);
	}


	@Override
	public List<CommentVO> getAllCommentVO() {
	
		return articleMapper.getAllCommentVO();
	}


	@Override
	public int commentDeleteById(int id) {
		return articleMapper.commentDeleteById(id);
	}


	

}
