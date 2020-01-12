package com.assessment.CTZMapper.country.controller;

import com.assessment.CTZMapper.common.annotation.HandleExceptions;
import com.assessment.CTZMapper.country.dto.CountryRequest;
import com.assessment.CTZMapper.country.mapper.CountryMapper;
import com.assessment.CTZMapper.country.service.CountryService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
public class CountryController {

    private final CountryService countryService;
    private final CountryMapper countryMapper;


    @GetMapping("/countries")
    @HandleExceptions
    public ResponseEntity<?> getAllCountries() {
        return new ResponseEntity<>(countryMapper.mapCountryToCountryResponse(countryService.getAllCountries()), HttpStatus.OK);
    }

    @PutMapping("/countries")
    @HandleExceptions
    public ResponseEntity<?> updateCountryTimeZone(@RequestBody CountryRequest country) {
        countryService.updateCountryTimeZone(countryMapper.mapCountryRequestToDto(country));
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
