package com.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.Entity.TechnologyEntity;

public interface TechnologyRepository extends JpaRepository<TechnologyEntity, Integer> {

    TechnologyEntity findByName(String name);
}
