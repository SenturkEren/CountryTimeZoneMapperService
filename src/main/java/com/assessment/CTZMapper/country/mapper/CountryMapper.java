package com.assessment.CTZMapper.country.mapper;

import com.assessment.CTZMapper.country.dto.CountryDto;
import com.assessment.CTZMapper.country.dto.CountryRequest;
import com.assessment.CTZMapper.country.dto.CountryResponse;
import com.assessment.CTZMapper.country.entitiy.Country;
import com.assessment.CTZMapper.timezone.mapper.TimeZoneMapper;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

@Mapper(uses = {TimeZoneMapper.class})
public interface CountryMapper {

    @IterableMapping(qualifiedByName = "mapCountryToCountryResponse")
    List<CountryResponse> mapCountryToCountryResponse(List<Country> allCountries);

    @Named("countryMapper")
    @Mapping(source = "defaultTimezone", target = "defaultTimezone", qualifiedByName = "TimeZoneMapper.mapTimeZoneToLookUp")
    @Mapping(source = "timeZones", target = "timeZones", qualifiedByName = "TimeZoneMapper.mapTimeZoneToLookUpList")
    CountryResponse countryMapper(Country child);

    @Mapping(source = "defaultTimezone.key", target = "timezoneCode")
    CountryDto mapCountryRequestToDto(CountryRequest country);
}
