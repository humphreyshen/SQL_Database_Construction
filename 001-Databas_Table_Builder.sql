CREATE TABLE TableName_personal(
    id INT(10) unsigned AUTO_INCREMENT,
    zh_name VARCHAR (10),
    en_name VARCHAR (30),
    gender CHAR(1),
    birthday DATE,
    age VARCHAR(11),
    email VARCHAR(100),
    zip_code VARCHAR(10),
    region VARCHAR(30),
    county VARCHAR(30),
    district VARCHAR(30),
    address VARCHAR(200),
    cell VARCHAR(200),
    tele VARCHAR(200),
    id_num VARCHAR (15),
    last_edit DATETIME(6),
    bye TINYINT(1) NOT NULL,
    note TEXT,	
PRIMARY KEY (id)
);

CREATE TABLE TableName_academic(
    id INT (10),
    alumni_id VARCHAR(15),
    atta VARCHAR(10),
    grad_year YEAR(4), 
    school VARCHAR (15),
    dept VARCHAR (15),
    class VARCHAR (20),
    liasion TINYINT(1),
    s_no INT(20) UNSIGNED AUTO_INCREMENT,
PRIMARY KEY (s_no)
 );
 
CREATE TABLE TableName_event(
    event_id INT(10) UNSIGNED AUTO_INCREMENT,
    event_year YEAR (4),
    event_name VARCHAR (30),
    event_price CHAR (5),
    PRIMARY KEY (event_id)
);

CREATE TABLE TableName_event_participant(
    event_id INT(10),
    id INT(10),
    zh_name VARCHAR(100),
    email VARCHAR(200)
);

CREATE TABLE TableName_atta_id(
atta VARCHAR(5),
atta_name VARCHAR(20)
);

CREATE TABLE TableName_schooldept_id(
	schooldept_id VARCHAR (3),
	school_id VARCHAR (2),
	dept_id VARCHAR (2),
	school_name VARCHAR (30),
	dept_name VARCHAR (30)
);

CREATE TABLE TableName_zipcode(
	zip_code CHAR(5),
	zip_code_countyname VARCHAR(10),
	zip_code_districtname VARCHAR(10)
);

CREATE TABLE TableName_region(
	region_code VARCHAR(3),
  region_name VARCHAR(11),
	region_cont VARCHAR(3)
);

CREATE TABLE TableName_city(
	city_id VARCHAR(5),
	city_name VARCHAR (20)
);
© 2021 GitHub, Inc.
Terms
Privacy
Security