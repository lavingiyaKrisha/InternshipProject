package com.Entity;

import jakarta.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;

@Entity
@Table(name = "internship")
public class InternshipEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer internshipId;

    private String title;
    private String description;

    private LocalDate startDate;
    private LocalDate endDate;

    private String contactPersonName;
    private String contactPersonContactNum;

    private Boolean isPaid = false;
    private Boolean isStipend = false;

    private Double amount;
    private Double stipendAmount;

    private Boolean active = true;

    private LocalDateTime createdAt = LocalDateTime.now();

    @ManyToOne
    @JoinColumn(name = "technology_id", nullable = false)
    private TechnologyEntity technology;

    // ===== GETTERS & SETTERS =====

    public Integer getInternshipId() { return internshipId; }
    public void setInternshipId(Integer internshipId) { this.internshipId = internshipId; }

    public String getTitle() { return title; }
    public void setTitle(String title) { this.title = title; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public LocalDate getStartDate() { return startDate; }
    public void setStartDate(LocalDate startDate) { this.startDate = startDate; }

    public LocalDate getEndDate() { return endDate; }
    public void setEndDate(LocalDate endDate) { this.endDate = endDate; }

    public String getContactPersonName() { return contactPersonName; }
    public void setContactPersonName(String contactPersonName) { this.contactPersonName = contactPersonName; }

    public String getContactPersonContactNum() { return contactPersonContactNum; }
    public void setContactPersonContactNum(String contactPersonContactNum) { this.contactPersonContactNum = contactPersonContactNum; }

    public Boolean getIsPaid() { return isPaid; }
    public void setIsPaid(Boolean isPaid) { this.isPaid = isPaid; }

    public Boolean getIsStipend() { return isStipend; }
    public void setIsStipend(Boolean isStipend) { this.isStipend = isStipend; }

    public Double getAmount() { return amount; }
    public void setAmount(Double amount) { this.amount = amount; }

    public Double getStipendAmount() { return stipendAmount; }
    public void setStipendAmount(Double stipendAmount) { this.stipendAmount = stipendAmount; }

    public Boolean getActive() { return active; }
    public void setActive(Boolean active) { this.active = active; }

    public LocalDateTime getCreatedAt() { return createdAt; }
    public void setCreatedAt(LocalDateTime createdAt) { this.createdAt = createdAt; }

    public TechnologyEntity getTechnology() { return technology; }
    public void setTechnology(TechnologyEntity technology) { this.technology = technology; }
}
