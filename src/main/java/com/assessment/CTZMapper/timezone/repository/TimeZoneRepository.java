package com.assessment.CTZMapper.timezone.repository;

import com.assessment.CTZMapper.timezone.entity.TimeZone;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface TimeZoneRepository extends JpaRepository<TimeZone, Long>{
    Optional<TimeZone> findTimeZoneByName(String name);
}
