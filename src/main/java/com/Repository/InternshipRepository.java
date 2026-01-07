package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Entity.InternshipEntity;

public interface InternshipRepository extends JpaRepository<InternshipEntity, Integer> {
}
