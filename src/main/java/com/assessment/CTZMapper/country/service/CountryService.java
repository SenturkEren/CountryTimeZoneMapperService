package com.assessment.CTZMapper.country.service;

import com.assessment.CTZMapper.country.dto.CountryDto;
import com.assessment.CTZMapper.country.entitiy.Country;
import com.assessment.CTZMapper.country.repository.CountryRepository;
import com.assessment.CTZMapper.timezone.entity.TimeZone;
import com.assessment.CTZMapper.timezone.repository.TimeZoneRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
public class CountryService {

    @Autowired
    private CountryRepository countryRepository;

    @Autowired
    private TimeZoneRepository timeZoneRepository;


    public List<Country> getAllCountries() {
        List<Country> countries = countryRepository.findAll();
        countries.stream().forEach(country -> {
            if ((country.getDefaultTimezone() == null))
                country.setDefaultTimezone(country.getTimeZones().stream().findFirst().orElse(null));
        });
        return countries;
    }

    @Transactional
    public void updateCountryTimeZone(CountryDto country) {

        Country countryDB = countryRepository.findCountryByCountryCode(country.getCountryCode()).get();
        TimeZone timeZone = timeZoneRepository.findTimeZoneByName(country.getTimezoneCode()).get();
        countryDB.setDefaultTimezone(timeZone);
        countryRepository.save(countryDB);

    }
}
