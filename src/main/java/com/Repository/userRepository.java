package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Entity.UserEntity;

public interface userRepository extends JpaRepository<UserEntity, Integer>{
	
	 UserEntity findByEmail(String email);
}
