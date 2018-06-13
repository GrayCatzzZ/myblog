package blog.pojo;

import java.util.Date;

public class Comment {
	private Integer comm_id;
	private Integer user_id;
	private Date comm_time;
	private String comment;
	private User user ;
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Comment() {
		super();
	}
	
	public Comment(Integer comm_id, Integer user_id, Date comm_time, String comment) {
		super();
		this.comm_id = comm_id;
		this.user_id = user_id;
		this.comm_time = comm_time;
		this.comment = comment;
	}
	
	public Integer getComm_id() {
		return comm_id;
	}
	public void setComm_id(Integer comm_id) {
		this.comm_id = comm_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public Date getComm_time() {
		return comm_time;
	}
	public void setComm_time(Date comm_time) {
		this.comm_time = comm_time;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
