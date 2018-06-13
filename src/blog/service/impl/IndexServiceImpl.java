package blog.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import blog.mapper.IndexMapper;
import blog.pojo.Article;
import blog.pojo.Category;
import blog.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {

	@Autowired
	private IndexMapper indexMapper;
	
	//获取文章分类
	public List<Category> getCategroy() {		
		ArrayList<Category> category = (ArrayList<Category>) indexMapper.getCategory();
		return category;
		
	}

	@Override
	public List<Article> getCategroy_list(Integer cat_id) {
		List<Article> category_list = indexMapper.getCategory_list(cat_id);
		return category_list;
	}
	
	//获取分类
	public List<Category> getAllCategory(){
		
		return indexMapper.getAllCategory();
	}

}
