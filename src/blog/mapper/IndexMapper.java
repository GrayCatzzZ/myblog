package blog.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import blog.pojo.Article;
import blog.pojo.Category;

@Repository
public interface IndexMapper {

	
	//获取分类
	public List<Category> getCategory();
	
	//获取分类文章
	public List<Article> getCategory_list(Integer cat_id);

	public List<Category> getAllCategory();

}
