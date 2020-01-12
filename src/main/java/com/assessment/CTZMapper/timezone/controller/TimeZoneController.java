package com.assessment.CTZMapper.timezone.controller;

import com.assessment.CTZMapper.country.entitiy.Country;
import com.assessment.CTZMapper.timezone.entity.TimeZone;
import com.assessment.CTZMapper.timezone.repository.TimeZoneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class TimeZoneController {

    @Autowired
    private TimeZoneRepository timeZoneRepository;

    @GetMapping("/timezones")
    public Country getAllTimeZones() {
        List<TimeZone> result = timeZoneRepository.findAll();
        return null;
    }
}
