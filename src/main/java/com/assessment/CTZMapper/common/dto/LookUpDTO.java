package com.assessment.CTZMapper.common.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
public class LookUpDTO implements Serializable {
    private String key;
    private String value;
}
