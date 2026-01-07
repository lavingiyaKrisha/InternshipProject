package com.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "users")
public class UserEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "first_name", nullable = false, length = 100)
    private String firstName;

    @Column(name = "last_name", nullable = false, length = 100)
    private String lastName;

    @Column(nullable = false, length = 10)
    private String gender;

    @Column(unique = true, nullable = false, length = 150)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(name = "contact_number", nullable = false, length = 15)
    private String contactNum;

    @Column(length = 100)
    private String city;

    @Column(length = 100)
    private String state;

    @Column(length = 100)
    private String country;

    // ✅ ROLE FIELD (DEFAULT = INTERN)
    @Column(nullable = false, length = 20)
    private String role = "INTERN";
    
    @Column(length = 6)
    private String otp;

    // ===== Getters & Setters =====

    public String getOtp() {
		return otp;
	}

	public void setOtp(String otp) {
		this.otp = otp;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

   
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }

    public String getContactNum() {
        return contactNum;
    }
    
    public void setContactNum(String contactNum) {
        this.contactNum = contactNum;
    }

    public String getCity() {
        return city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }
    
    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
}
