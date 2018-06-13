package blog.pojo;

public class Article {
	private Integer art_id;
	private Integer cat_id;
	private String title;
	private String content;
	private String art_time;
	private Integer art_num;
	private Category category;
	
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Article() {
		super();
	}
	public Article(Integer art_id, Integer cat_id, String title, String content, String time) {
		super();
		this.art_id = art_id;
		this.cat_id = cat_id;
		this.title = title;
		this.content = content;
		this.art_time = time;
	}
	
	
	public String getArt_time() {
		return art_time;
	}
	public void setArt_time(String art_time) {
		this.art_time = art_time;
	}
	public Integer getArt_num() {
		return art_num;
	}
	public void setArt_num(Integer art_num) {
		this.art_num = art_num;
	}
	public Article(Integer art_id, Integer cat_id, String title, String content, String art_time, Integer art_num) {
		super();
		this.art_id = art_id;
		this.cat_id = cat_id;
		this.title = title;
		this.content = content;
		this.art_time = art_time;
		this.art_num = art_num;
	}
	public Integer getArt_id() {
		return art_id;
	}
	public void setArt_id(Integer art_id) {
		this.art_id = art_id;
	}
	public Integer getCat_id() {
		return cat_id;
	}
	public void setCat_id(Integer cat_id) {
		this.cat_id = cat_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return art_time;
	}
	public void setTime(String time) {
		this.art_time = time;
	}
	
}
