package com.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "intern_detail")
public class InternDetailEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer internDetailId;

    @OneToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity user;

    private String collegeName;
    private String courseInfo;
    private Integer semester;
    @Column(name = "contact_number", nullable = false)
    private String contactNum;

	public String getContactNumber() {
		return contactNum;
	}
	public void setContactNumber(String contactNum) {
		this.contactNum = contactNum;
	}
	public Integer getInternDetailId() {
		return internDetailId;
	}
	public void setInternDetailId(Integer internDetailId) {
		this.internDetailId = internDetailId;
	}
	public UserEntity getUser() {
		return user;
	}
	public void setUser(UserEntity user) {
		this.user = user;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getCourseInfo() {
		return courseInfo;
	}
	public void setCourseInfo(String courseInfo) {
		this.courseInfo = courseInfo;
	}
	public Integer getSemester() {
		return semester;
	}
	public void setSemester(Integer semester) {
		this.semester = semester;
	}

    
}
