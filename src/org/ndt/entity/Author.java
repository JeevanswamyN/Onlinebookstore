package org.ndt.entity;

public class Author {
	private String authorName;
	private String authorMailId;
	public String getAuthorName() {
		return authorName;
	}
	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}
	public String getAuthorMailId() {
		return authorMailId;
	}
	public void setAuthorMailId(String authorMailId) {
		this.authorMailId = authorMailId;
	}
	public Author(String authorName, String authorMailId) {
		super();
		this.authorName = authorName;
		this.authorMailId = authorMailId;
	}

	
	
}
