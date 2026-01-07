package com.Entity;

import jakarta.persistence.*;

@Entity
@Table(name = "technology")
public class TechnologyEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")        // ✅ MUST MATCH DB
    private Integer technologyId;

    @Column(name = "name", nullable = false, unique = true)
    private String name;

    @Column(name = "description")
    private String description;

    @Column(name = "logo")
    private String logo;

    @Column(name = "active")
    private Boolean active;

    // getters & setters
    public Integer getTechnologyId() {
        return technologyId;
    }

    public void setTechnologyId(Integer technologyId) {
        this.technologyId = technologyId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }
}
