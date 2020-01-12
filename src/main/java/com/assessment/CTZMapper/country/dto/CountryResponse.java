package com.assessment.CTZMapper.country.dto;

import com.assessment.CTZMapper.common.dto.LookUpDTO;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.List;

@Getter
@Setter
public class CountryResponse implements Serializable {
    private String countryCode;
    private String countryName;
    private LookUpDTO defaultTimezone;
    private List<LookUpDTO> timeZones;
}
