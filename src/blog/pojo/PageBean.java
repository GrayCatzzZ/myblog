package blog.pojo;

import java.util.ArrayList;
import java.util.List;
//封装分页相关数据
public class PageBean<T> {
	private int currentPage;
	private int currentCount;
	private int totalCount;
	private int totalPage;
	private List<T> articlectList = new ArrayList<T>();
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getCurrentCount() {
		return currentCount;
	}
	public void setCurrentCount(int currentCount) {
		this.currentCount = currentCount;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<T> getArticlectList() {
		return articlectList;
	}
	public void setArticlectList(List<T> articlectList) {
		this.articlectList = articlectList;
	}
	
}
