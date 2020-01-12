DROP TABLE IF EXISTS country_timezone;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS timezone;


CREATE TABLE country
  (
     id           INTEGER NOT NULL auto_increment,
     country_code VARCHAR(255),
     country_name VARCHAR(255),
     DEFAULT_TIMEZONE_ID INTEGER,
     PRIMARY KEY (id)
  );

CREATE TABLE timezone
  (
     id              INTEGER NOT NULL auto_increment,
     name            VARCHAR(255),
     description     VARCHAR(255),
     relative_to_gmt VARCHAR(255),
     PRIMARY KEY (id)
  );

CREATE TABLE country_timezone
  (
     id              INTEGER NOT NULL auto_increment,
     country_id            INTEGER,
     timezone_id     INTEGER,
     PRIMARY KEY (id)
  );

INSERT INTO country_timezone
            (country_id,
             timezone_id
             )
             VALUES ('1' , '14'),
                    ('2' , '5'),
                    ('3' , '7'),
                    ('4' , '25'),
                    ('5' , '5'),
                    ('6' , '27'),
                    ('7' , '24'),
                    ('8' , '13'),
                    ('9' , '13'),
                    ('10' , '21'),
                    ('11' , '12'),
                    ('12' , '27'),
                    ('13' , '16'),
                    ('14' , '28'),
                    ('15' , '16'),
                    ('16' , '23'),
                    ('17' , '25'),
                    ('18' , '4'),
                    ('19' , '24'),
                    ('20' , '13'),
                    ('21' , '1'),
                    ('22' , '9'),
                    ('23' , '28'),
                    ('24' , '10'),
                    ('25' , '2'),
                    ('26' , '1'),
                    ('27' , '14'),
                    ('28' , '9'),
                    ('29' , '4'),
                    ('30' , '31'),
                    ('31' , '29'),
                    ('32' , '6'),
                    ('32' , '5'),
                    ('32' , '7'),
                    ('33' , '30'),
                    ('34' , '15'),
                    ('35' , '7'),
                    ('36' , '9'),
                    ('37' , '2'),
                    ('38' , '29'),
                    ('39' , '31'),
                    ('39' , '30'),
                    ('39' , '29'),
                    ('39' , '28'),
                    ('40' , '30'),
                    ('41' , '26'),
                    ('42' , '24'),
                    ('43' , '29'),
                    ('44' , '24'),
                    ('45' , '31'),
                    ('46' , '31'),
                    ('47' , '22'),
                    ('48' , '2'),
                    ('49' , '19'),
                    ('50' , '2'),
                    ('51' , '5'),
                    ('52' , '10'),
                    ('53' , '12'),
                    ('54' , '20'),
                    ('55' , '30'),
                    ('56' , '12'),
                    ('57' , '13'),
                    ('58' , '25'),
                    ('59' , '13'),
                    ('60' , '30'),
                    ('61' , '19'),
                    ('62' , '2'),
                    ('63' , '2'),
                    ('64' , '14'),
                    ('65' , '15'),
                    ('66' , '2'),
                    ('67' , '1'),
                    ('68' , '27'),
                    ('69' , '15'),
                    ('70' , '28'),
                    ('71' , '22'),
                    ('72' , '31'),
                    ('73' , '13'),
                    ('74' , '28'),
                    ('75' , '18'),
                    ('76' , '29'),
                    ('77' , '15'),
                    ('78' , '8'),
                    ('79' , '29'),
                    ('80' , '2'),
                    ('81' , '28'),
                    ('82' , '5'),
                    ('83' , '3'),
                    ('84' , '11'),
                    ('85' , '1'),
                    ('86' , '25'),
                    ('87' , '7'),
                    ('88' , '2'),
                    ('89' , '7'),
                    ('90' , '24'),
                    ('91' , '8'),
                    ('92' , '16'),
                    ('93' , '31'),
                    ('94' , '10'),
                    ('95' , '8'),
                    ('96' , '14'),
                    ('97' , '14'),
                    ('98' , '20'),
                    ('99' , '30'),
                    ('100' , '14'),
                    ('101' , '8'),
                    ('102' , '26'),
                    ('103' , '22'),
                    ('104' , '27'),
                    ('105' , '31'),
                    ('106' , '19'),
                    ('107' , '26'),
                    ('108' , '12'),
                    ('109' , '20'),
                    ('110' , '14'),
                    ('111' , '12'),
                    ('112' , '18'),
                    ('113' , '18'),
                    ('114' , '17'),
                    ('115' , '10'),
                    ('116' , '6'),
                    ('117' , '3'),
                    ('118' , '15'),
                    ('119' , '16'),
                    ('120' , '23'),
                    ('121' , '11'),
                    ('122' , '9'),
                    ('123' , '9'),
                    ('124' , '18'),
                    ('125' , '27'),
                    ('126' , '27'),
                    ('127' , '11'),
                    ('128' , '25'),
                    ('129' , '26'),
                    ('130' , '16'),
                    ('131' , '21'),
                    ('132' , '18'),
                    ('133' , '24'),
                    ('134' , '9'),
                    ('135' , '19'),
                    ('136' , '24'),
                    ('137' , '2'),
                    ('138' , '2'),
                    ('139' , '26'),
                    ('140' , '7'),
                    ('141' , '14'),
                    ('142' , '10'),
                    ('143' , '18'),
                    ('144' , '11'),
                    ('145' , '16'),
                    ('146' , '5'),
                    ('147' , '14'),
                    ('148' , '30'),
                    ('149' , '14'),
                    ('150' , '17'),
                    ('151' , '13'),
                    ('152' , '7'),
                    ('153' , '11'),
                    ('154' , '3'),
                    ('155' , '27'),
                    ('156' , '2'),
                    ('157' , '23'),
                    ('158' , '9'),
                    ('159' , '20'),
                    ('160' , '31'),
                    ('161' , '14'),
                    ('162' , '13'),
                    ('163' , '3'),
                    ('164' , '11'),
                    ('165' , '16'),
                    ('166' , '3'),
                    ('167' , '6'),
                    ('168' , '14'),
                    ('169' , '30'),
                    ('170' , '14'),
                    ('171' , '22'),
                    ('172' , '13'),
                    ('173' , '11'),
                    ('174' , '13'),
                    ('175' , '17'),
                    ('176' , '31'),
                    ('177' , '15'),
                    ('178' , '7'),
                    ('179' , '18'),
                    ('180' , '28'),
                    ('181' , '9'),
                    ('182' , '7'),
                    ('183' , '11'),
                    ('184' , '20'),
                    ('185' , '23'),
                    ('186' , '12'),
                    ('187' , '22'),
                    ('188' , '7'),
                    ('189' , '2'),
                    ('190' , '25'),
                    ('191' , '12'),
                    ('192' , '24'),
                    ('193' , '23'),
                    ('194' , '27'),
                    ('195' , '6'),
                    ('196' , '5'),
                    ('197' , '16'),
                    ('198' , '9'),
                    ('199' , '22'),
                    ('200' , '18'),
                    ('201' , '25'),
                    ('202' , '9'),
                    ('203' , '2'),
                    ('204' , '4'),
                    ('205' , '17'),
                    ('206' , '5'),
                    ('207' , '7'),
                    ('208' , '13'),
                    ('209' , '26'),
                    ('210' , '21'),
                    ('211' , '24'),
                    ('212' , '2'),
                    ('213' , '6'),
                    ('214' , '27'),
                    ('215' , '6'),
                    ('216' , '11'),
                    ('217' , '17'),
                    ('218' , '15'),
                    ('219' , '2'),
                    ('220' , '30'),
                    ('221' , '11'),
                    ('222' , '16'),
                    ('223' , '30'),
                    ('224' , '27'),
                    ('225' , '17'),
                    ('226' , '16'),
                    ('227' , '28'),
                    ('228' , '10'),
                    ('229' , '10'),
                    ('230' , '15'),
                    ('231' , '17'),
                    ('232' , '11'),
                    ('233' , '6'),
                    ('234' , '16'),
                    ('235' , '26'),
                    ('235' , '25'),
                    ('235' , '24'),
                    ('235' , '23'),
                    ('235' , '22'),
                    ('236' , '5'),
                    ('237' , '20'),
                    ('238' , '10'),
                    ('239' , '8'),
                    ('240' , '3'),
                    ('241' , '15'),
                    ('242' , '23'),
                    ('243' , '10'),
                    ('244' , '27'),
                    ('245' , '11'),
                    ('246' , '22'),
                    ('247' , '1'),
                    ('248' , '7'),
                    ('249' , '22'),
                    ('250' , '11'),
                    ('251' , '28'),
                    ('252' , '22');


INSERT INTO timezone
            (name,
             description,
             relative_to_gmt)
VALUES      ('GMT',
             'Greenwich Mean Time',
             'GMT'),
            ('UTC',
             'Universal Coordinated Time',
             'GMT'),
            ('ECT',
             'European Central Time',
             'GMT+1:00'),
            ('EET',
             'Eastern European Time',
             'GMT+2:00'),
            ('ART',
             '(Arabic) Egypt Standard Time',
             'GMT+2:00'),
            ('EAT',
             'Eastern African Time',
             'GMT+3:00'),
            ('MET',
             'Middle East Time	',
             'GMT+3:30'),
            ('NET',
             'Near East Time',
             'GMT+4:00'),
            ('PLT',
             'Pakistan Lahore Time',
             'GMT+5:00'),
            ('IST',
             'India Standard Time',
             'GMT+5:30'),
            ('BST',
             'Bangladesh Standard Time',
             'GMT+6:00'),
            ('VST',
             'Vietnam Standard Time',
             'GMT+7:00'),
            ('CTT',
             'China Taiwan Time',
             'GMT+8:00'),
            ('JST',
             'Japan Standard Time',
             'GMT+9:00'),
            ('ACT',
             'Australia Central Time',
             'GMT+9:30'),
            ('AET',
             'Australia Eastern Time',
             'GMT+10:00'),
            ('SST',
             'Solomon Standard Time',
             'GMT+11:00'),
            ('NST',
             'New Zealand Standard Time',
             'GMT+12:00'),
            ('MIT',
             'Midway Islands Time',
             'GMT-11:00'),
            ('HST',
             'Hawaii Standard Time',
             'GMT-10:00'),
            ('AST',
             'Alaska Standard Time',
             'GMT-9:00'),
            ('PST',
             'Pacific Standard Time',
             'GMT-8:00'),
            ('PNT',
             'Phoenix Standard Time',
             'GMT-7:00'),
            ('MST',
             'Mountain Standard Time',
             'GMT-7:00'),
            ('CST',
             'Central Standard Time',
             'GMT-6:00'),
            ('EST',
             'Eastern Standard Time',
             'GMT-5:00'),
            ('IET',
             'Indiana Eastern Standard Time',
             'GMT-5:00'),
            ('PRT',
             'Puerto Rico and US Virgin Islands Time',
             'GMT-4:00'),
            ('CNT',
             'Canada Newfoundland Time',
             'GMT-3:30'),
            ('AGT',
             'Argentina Standard Time',
             'GMT-3:00'),
            ('BET',
             'Brazil Eastern Time',
             'GMT-3:00'),
            ('CAT',
             'Central African Time',
             '	GMT-1:00');

INSERT INTO country
            (country_code,
             country_name)
VALUES      ('AD',
             'Andorra'),
            ('AE',
             'United Arab Emirates'),
            ('AF',
             'Afghanistan'),
            ('AG',
             'Antigua and Barbuda'),
            ('AI',
             'Anguilla'),
            ('AL',
             'Albania'),
            ('AM',
             'Armenia'),
            ('AN',
             'Netherlands Antilles'),
            ('AO',
             'Angola'),
            ('AQ',
             'Antarctica'),
            ('AR',
             'Argentina'),
            ('AS',
             'American Samoa'),
            ('AT',
             'Austria'),
            ('AU',
             'Australia'),
            ('AW',
             'Aruba'),
            ('AX',
             'Aland Islands'),
            ('AZ',
             'Azerbaijan'),
            ('BA',
             'Bosnia and Herzegovina'),
            ('BB',
             'Barbados'),
            ('BD',
             'Bangladesh'),
            ('BE',
             'Belgium'),
            ('BF',
             'Burkina Faso'),
            ('BG',
             'Bulgaria'),
            ('BH',
             'Bahrain'),
            ('BI',
             'Burundi'),
            ('BJ',
             'Benin'),
            ('BL',
             'Saint Barthélemy'),
            ('BM',
             'Bermuda'),
            ('BN',
             'Brunei'),
            ('BO',
             'Bolivia'),
            ('BQ',
             'Bonaire, Saint Eustatius and Saba '),
            ('BR',
             'Brazil'),
            ('BS',
             'Bahamas'),
            ('BT',
             'Bhutan'),
            ('BV',
             'Bouvet Island'),
            ('BW',
             'Botswana'),
            ('BY',
             'Belarus'),
            ('BZ',
             'Belize'),
            ('CA',
             'Canada'),
            ('CC',
             'Cocos Islands'),
            ('CD',
             'Democratic Republic of the Congo'),
            ('CF',
             'Central African Republic'),
            ('CG',
             'Republic of the Congo'),
            ('CH',
             'Switzerland'),
            ('CI',
             'Ivory Coast'),
            ('CK',
             'Cook Islands'),
            ('CL',
             'Chile'),
            ('CM',
             'Cameroon'),
            ('CN',
             'China'),
            ('CO',
             'Colombia'),
            ('CR',
             'Costa Rica'),
            ('CS',
             'Serbia and Montenegro'),
            ('CU',
             'Cuba'),
            ('CV',
             'Cape Verde'),
            ('CW',
             'Curaçao'),
            ('CX',
             'Christmas Island'),
            ('CY',
             'Cyprus'),
            ('CZ',
             'Czech Republic'),
            ('DE',
             'Germany'),
            ('DJ',
             'Djibouti'),
            ('DK',
             'Denmark'),
            ('DM',
             'Dominica'),
            ('DO',
             'Dominican Republic'),
            ('DZ',
             'Algeria'),
            ('EC',
             'Ecuador'),
            ('EE',
             'Estonia'),
            ('EG',
             'Egypt'),
            ('EH',
             'Western Sahara'),
            ('ER',
             'Eritrea'),
            ('ES',
             'Spain'),
            ('ET',
             'Ethiopia'),
            ('FI',
             'Finland'),
            ('FJ',
             'Fiji'),
            ('FK',
             'Falkland Islands'),
            ('FM',
             'Micronesia'),
            ('FO',
             'Faroe Islands'),
            ('FR',
             'France'),
            ('GA',
             'Gabon'),
            ('GB',
             'United Kingdom'),
            ('GD',
             'Grenada'),
            ('GE',
             'Georgia'),
            ('GF',
             'French Guiana'),
            ('GG',
             'Guernsey'),
            ('GH',
             'Ghana'),
            ('GI',
             'Gibraltar'),
            ('GL',
             'Greenland'),
            ('GM',
             'Gambia'),
            ('GN',
             'Guinea'),
            ('GP',
             'Guadeloupe'),
            ('GQ',
             'Equatorial Guinea'),
            ('GR',
             'Greece'),
            ('GS',
             'South Georgia and the South Sandwich Islands'),
            ('GT',
             'Guatemala'),
            ('GU',
             'Guam'),
            ('GW',
             'Guinea-Bissau'),
            ('GY',
             'Guyana'),
            ('HK',
             'Hong Kong'),
            ('HM',
             'Heard Island and McDonald Islands'),
            ('HN',
             'Honduras'),
            ('HR',
             'Croatia'),
            ('HT',
             'Haiti'),
            ('HU',
             'Hungary'),
            ('ID',
             'Indonesia'),
            ('IE',
             'Ireland'),
            ('IL',
             'Israel'),
            ('IM',
             'Isle of Man'),
            ('IN',
             'India'),
            ('IO',
             'British Indian Ocean Territory'),
            ('IQ',
             'Iraq'),
            ('IR',
             'Iran'),
            ('IS',
             'Iceland'),
            ('IT',
             'Italy'),
            ('JE',
             'Jersey'),
            ('JM',
             'Jamaica'),
            ('JO',
             'Jordan'),
            ('JP',
             'Japan'),
            ('KE',
             'Kenya'),
            ('KG',
             'Kyrgyzstan'),
            ('KH',
             'Cambodia'),
            ('KI',
             'Kiribati'),
            ('KM',
             'Comoros'),
            ('KN',
             'Saint Kitts and Nevis'),
            ('KP',
             'North Korea'),
            ('KR',
             'South Korea'),
            ('KW',
             'Kuwait'),
            ('KY',
             'Cayman Islands'),
            ('KZ',
             'Kazakhstan'),
            ('LA',
             'Laos'),
            ('LB',
             'Lebanon'),
            ('LC',
             'Saint Lucia'),
            ('LI',
             'Liechtenstein'),
            ('LK',
             'Sri Lanka'),
            ('LR',
             'Liberia'),
            ('LS',
             'Lesotho'),
            ('LT',
             'Lithuania'),
            ('LU',
             'Luxembourg'),
            ('LV',
             'Latvia'),
            ('LY',
             'Libya'),
            ('MA',
             'Morocco'),
            ('MC',
             'Monaco'),
            ('MD',
             'Moldova'),
            ('ME',
             'Montenegro'),
            ('MF',
             'Saint Martin'),
            ('MG',
             'Madagascar'),
            ('MH',
             'Marshall Islands'),
            ('MK',
             'Macedonia'),
            ('ML',
             'Mali'),
            ('MM',
             'Myanmar'),
            ('MN',
             'Mongolia'),
            ('MO',
             'Macao'),
            ('MP',
             'Northern Mariana Islands'),
            ('MQ',
             'Martinique'),
            ('MR',
             'Mauritania'),
            ('MS',
             'Montserrat'),
            ('MT',
             'Malta'),
            ('MU',
             'Mauritius'),
            ('MV',
             'Maldives'),
            ('MW',
             'Malawi'),
            ('MX',
             'Mexico'),
            ('MY',
             'Malaysia'),
            ('MZ',
             'Mozambique'),
            ('NA',
             'Namibia'),
            ('NC',
             'New Caledonia'),
            ('NE',
             'Niger'),
            ('NF',
             'Norfolk Island'),
            ('NG',
             'Nigeria'),
            ('NI',
             'Nicaragua'),
            ('NL',
             'Netherlands'),
            ('NO',
             'Norway'),
            ('NP',
             'Nepal'),
            ('NR',
             'Nauru'),
            ('NU',
             'Niue'),
            ('NZ',
             'New Zealand'),
            ('OM',
             'Oman'),
            ('PA',
             'Panama'),
            ('PE',
             'Peru'),
            ('PF',
             'French Polynesia'),
            ('PG',
             'Papua New Guinea'),
            ('PH',
             'Philippines'),
            ('PK',
             'Pakistan'),
            ('PL',
             'Poland'),
            ('PM',
             'Saint Pierre and Miquelon'),
            ('PN',
             'Pitcairn'),
            ('PR',
             'Puerto Rico'),
            ('PS',
             'Palestinian Territory'),
            ('PT',
             'Portugal'),
            ('PW',
             'Palau'),
            ('PY',
             'Paraguay'),
            ('QA',
             'Qatar'),
            ('RE',
             'Reunion'),
            ('RO',
             'Romania'),
            ('RS',
             'Serbia'),
            ('RU',
             'Russia'),
            ('RW',
             'Rwanda'),
            ('SA',
             'Saudi Arabia'),
            ('SB',
             'Solomon Islands'),
            ('SC',
             'Seychelles'),
            ('SD',
             'Sudan'),
            ('SE',
             'Sweden'),
            ('SG',
             'Singapore'),
            ('SH',
             'Saint Helena'),
            ('SI',
             'Slovenia'),
            ('SJ',
             'Svalbard and Jan Mayen'),
            ('SK',
             'Slovakia'),
            ('SL',
             'Sierra Leone'),
            ('SM',
             'San Marino'),
            ('SN',
             'Senegal'),
            ('SO',
             'Somalia'),
            ('SR',
             'Suriname'),
            ('SS',
             'South Sudan'),
            ('ST',
             'Sao Tome and Principe'),
            ('SV',
             'El Salvador'),
            ('SX',
             'Sint Maarten'),
            ('SY',
             'Syria'),
            ('SZ',
             'Swaziland'),
            ('TC',
             'Turks and Caicos Islands'),
            ('TD',
             'Chad'),
            ('TF',
             'French Southern Territories'),
            ('TG',
             'Togo'),
            ('TH',
             'Thailand'),
            ('TJ',
             'Tajikistan'),
            ('TK',
             'Tokelau'),
            ('TL',
             'East Timor'),
            ('TM',
             'Turkmenistan'),
            ('TN',
             'Tunisia'),
            ('TO',
             'Tonga'),
            ('TR',
             'Turkey'),
            ('TT',
             'Trinidad and Tobago'),
            ('TV',
             'Tuvalu'),
            ('TW',
             'Taiwan'),
            ('TZ',
             'Tanzania'),
            ('UA',
             'Ukraine'),
            ('UG',
             'Uganda'),
            ('UM',
             'United States Minor Outlying Islands'),
            ('US',
             'United States'),
            ('UY',
             'Uruguay'),
            ('UZ',
             'Uzbekistan'),
            ('VA',
             'Vatican'),
            ('VC',
             'Saint Vincent and the Grenadines'),
            ('VE',
             'Venezuela'),
            ('VG',
             'British Virgin Islands'),
            ('VI',
             'U.S. Virgin Islands'),
            ('VN',
             'Vietnam'),
            ('VU',
             'Vanuatu'),
            ('WF',
             'Wallis and Futuna'),
            ('WS',
             'Samoa'),
            ('XK',
             'Kosovo'),
            ('YE',
             'Yemen'),
            ('YT',
             'Mayotte'),
            ('ZA',
             'South Africa'),
            ('ZM',
             'Zambia'),
            ('ZW',
             'Zimbabwe');