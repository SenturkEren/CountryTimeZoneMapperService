package com.assessment.CTZMapper.country.entitiy;

import com.assessment.CTZMapper.timezone.entity.TimeZone;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = "Country")
public class Country  {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "country_code", nullable = false)
    private String countryCode;
    @Column(name = "country_name", nullable = false)
    private String countryName;


    @ManyToOne(fetch = FetchType.LAZY)
    private TimeZone defaultTimezone;

    @ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.PERSIST)
    @JoinTable(name = "country_timezone",
            joinColumns = {
                    @JoinColumn(name = "country_id", referencedColumnName = "id",
                            nullable = false, updatable = false)},
            inverseJoinColumns = {
                    @JoinColumn(name = "timezone_id", referencedColumnName = "id",
                            nullable = false, updatable = false)})
    private Set<TimeZone> timeZones = new HashSet<TimeZone>();


}