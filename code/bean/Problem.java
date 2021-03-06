package cc.siriuscloud.dtxz.bean;

///*==============================================================*/
///* Table: dtxz_problem                                          */
///*==============================================================*/
//create table dtxz_problem
//(
//   prob_id              varchar(32) not null,
//   title                varchar(100) not null,
//   content              varchar(255) not null,
//   type                 varchar(16),
//   pub_time             datetime not null,
//   count                Integer(10) not null default 0,
//   user_id              varchar(32) not null,
//   primary key (prob_id)
//);

import java.util.*;

public class Problem {

	private String prob_id;
	private String title;
	private String content;
	private String type;
	private Date pub_time;
	private Integer count;
	private String user_id;
	
	public Problem(){
		
	}

	public Problem(String prob_id, String title, String content, String type, Date pub_time, Integer count,
			String user_id) {
		super();
		this.prob_id = prob_id;
		this.title = title;
		this.content = content;
		this.type = type;
		this.pub_time = pub_time;
		this.count = count;
		this.user_id = user_id;
	}

	public String getProb_id() {
		return prob_id;
	}

	public void setProb_id(String prob_id) {
		this.prob_id = prob_id;
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

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Date getPub_time() {
		return pub_time;
	}

	public void setPub_time(Date pub_time) {
		this.pub_time = pub_time;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
}
