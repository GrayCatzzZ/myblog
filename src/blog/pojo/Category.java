package blog.pojo;

import java.util.ArrayList;
import java.util.List;

public class Category {
	private Integer cat_id;
	private String cat_name;
	private List<Article> articleList = new ArrayList<>();
	private Integer cat_count;
	
	
	public Integer getCat_count() {
		return cat_count;
	}

	public void setCat_ount(Integer cat_count) {
		this.cat_count = cat_count;
	}

	public Category() {
		super();
	}
	
	public List<Article> getArticleList() {
		return articleList;
	}

	public void setArticleList(List<Article> articleList) {
		this.articleList = articleList;
	}

	public Integer getCat_id() {
		return cat_id;
	}
	public void setCat_id(Integer cat_id) {
		this.cat_id = cat_id;
	}

	public String getCat_name() {
		return cat_name;
	}

	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}

	public Category(Integer cat_id, String cat_name) {
		super();
		this.cat_id = cat_id;
		this.cat_name = cat_name;
	}
	
}
