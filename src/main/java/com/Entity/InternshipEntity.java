package com.Entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "internship")
public class InternshipEntity {

 
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer internshipId;


    private String title;

    private LocalDate startDate;
    private LocalDate endDate;

    private String description;

    private String contactPersonName;
    private String contactPersonContactNum;

    private Boolean active;
    private Boolean isPaid;
    private Double amount;

    private Boolean isStipend;
    private Double stipendAmount;

    private LocalDateTime createdAt = LocalDateTime.now();

	public Integer getInternshipId() {
		return internshipId;
	}

	public void setInternshipId(Integer internshipId) {
		this.internshipId = internshipId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public LocalDate getStartDate() {
		return startDate;
	}

	public void setStartDate(LocalDate startDate) {
		this.startDate = startDate;
	}

	public LocalDate getEndDate() {
		return endDate;
	}

	public void setEndDate(LocalDate endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getContactPersonName() {
		return contactPersonName;
	}

	public void setContactPersonName(String contactPersonName) {
		this.contactPersonName = contactPersonName;
	}

	public String getContactPersonContactNum() {
		return contactPersonContactNum;
	}

	public void setContactPersonContactNum(String contactPersonContactNum) {
		this.contactPersonContactNum = contactPersonContactNum;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Boolean getIsPaid() {
		return isPaid;
	}

	public void setIsPaid(Boolean isPaid) {
		this.isPaid = isPaid;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

	public Boolean getIsStipend() {
		return isStipend;
	}

	public void setIsStipend(Boolean isStipend) {
		this.isStipend = isStipend;
	}

	public Double getStipendAmount() {
		return stipendAmount;
	}

	public void setStipendAmount(Double stipendAmount) {
		this.stipendAmount = stipendAmount;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime createdAt) {
		this.createdAt = createdAt;
	}

//    @ManyToOne
//    @JoinColumn(name = "technology_id")
//    private TechnologyEntity technology;

    // getters & setters (generate normally)
    
    
    
}
