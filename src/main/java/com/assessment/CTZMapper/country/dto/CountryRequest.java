package com.assessment.CTZMapper.country.dto;

import com.assessment.CTZMapper.common.dto.LookUpDTO;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CountryRequest {
    private String countryCode;
    private String countryName;
    private LookUpDTO defaultTimezone;
}
