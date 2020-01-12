package com.assessment.CTZMapper.timezone.mapper;

import com.assessment.CTZMapper.common.dto.LookUpDTO;
import com.assessment.CTZMapper.timezone.entity.TimeZone;
import org.mapstruct.IterableMapping;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Named;

import java.util.List;

@Mapper
public interface TimeZoneMapper {

    @Mapping(source = "name", target = "key")
    @Mapping(source = "relativeToGmt", target = "value")
    @Named("mapTimeZoneToLookUp")
    LookUpDTO mapTimeZoneToLookUp(TimeZone timeZone);


    @IterableMapping(qualifiedByName = "mapTimeZoneToLookUpList")
    List<LookUpDTO> mapTimeZoneToLookUpList(List<TimeZone> timeZone);
}
