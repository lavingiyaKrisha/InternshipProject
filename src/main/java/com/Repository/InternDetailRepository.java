package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Entity.InternDetailEntity;

public interface InternDetailRepository extends JpaRepository<InternDetailEntity, Integer> {

    InternDetailEntity findByUser_Id(Integer userId);
}
