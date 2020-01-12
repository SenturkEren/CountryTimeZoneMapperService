package com.assessment.CTZMapper.timezone.entity;

import com.assessment.CTZMapper.country.entitiy.Country;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;

@Getter
@Setter
@Entity
@Table(name = "timezone")
public class TimeZone implements Serializable {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "description", nullable = false)
    private String description;
    @Column(name = "relative_to_gmt", nullable = false)
    private String relativeToGmt;

    @OneToMany(
            mappedBy = "defaultTimezone",
            cascade = CascadeType.ALL,
            orphanRemoval = true
    )
    private List<Country> countries;//= new ArrayList<>();

    @ManyToMany(mappedBy = "timeZones", fetch = FetchType.LAZY)
    private Set<Country> Countryzzzz = new HashSet<>();

}
