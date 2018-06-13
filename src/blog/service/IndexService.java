package blog.service;

import java.util.List;

import blog.pojo.Article;
import blog.pojo.Category;

public interface IndexService {
	
	//获取分类
	public List<Category> getCategroy();
	
	//文章分类显示
	public List<Article> getCategroy_list(Integer cat_id);
	
	public List<Category> getAllCategory();
}
