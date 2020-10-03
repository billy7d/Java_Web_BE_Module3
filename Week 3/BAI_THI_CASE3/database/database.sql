CREATE DATABASE TEST3;

USE TEST3;



CREATE TABLE city(
id int auto_increment primary key,
city_name nvarchar(100),
nation nvarchar(100),
area double,
danso bigint,
gdp double,
description text
);

CREATE TABLE COUNTRY(
country_id int,
country_name varchar(200));

DELIMITER //
CREATE PROCEDURE show_ds_city()
BEGIN 
SELECT * from city;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE show_one_city(in id int)
BEGIN 
SELECT * FROM city where city.id = id;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE insert_new_city(in city_name nvarchar(100), in nation nvarchar(100), in area double, in danso bigint, in gdp double, in description text)
BEGIN 
INSERT INTO city(city_name,nation,area,danso,gdp,description) VALUES (city_name,nation,area,danso,gdp,description);
END//
DELIMITER ;



DELIMITER //
CREATE PROCEDURE get_all_country()
BEGIN 
SELECT * FROM country;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_city(in id int)
BEGIN
DELETE FROM city where city.id =id;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE update_city(in id int,in city_name nvarchar(255),in nation nvarchar(100),in area double, in danso bigint,in gdp double, in description text)
BEGIN 
UPDATE city
set city.city_name = city_name, city.nation = nation, city.area = area, city.danso = danso, city.gdp = gdp, city.description = description
where city.id = id;
END //
DELIMITER ;


insert into country(country_id,country_name) values(1,"Viet Nam");
insert into country(country_id,country_name) values(2,"Laos");






