CREATE DATABASE demo;
USE demo;

CREATE TABLE users(
id int(3) NOT NULL AUTO_INCREMENT,
name VARCHAR(120) NOT NULL,
email VARCHAR(220) NOT NULL,
country VARCHAR(120),
PRIMARY KEY(id)
);

insert into users(name, email, country) values('Minh','minh@codegym.vn','Viet Nam');
insert into users(name, email, country) values('Kante','kante@che.uk','Kenia');

select * from users;
select * from users order by name desc;

DELIMITER $$
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
SELECT users.name,users.email,users.country
from users
where users.id = user_id;
END$$
DELIMITER ;

call get_user_by_id(2);


DELIMITER $$
CREATE procedure insert_user(
IN user_name varchar(50),
IN user_email varchar(50),
IN user_country varchar(50)
)

BEGIN
INSERT INTO users(name,email,country) values(user_name,user_email,user_country);
END$$

DELIMITER ;

CREATE TABLE Permission(
id int(11),
name varchar(50)
);

DELIMITER //
CREATE PROCEDURE SHOW_ALL_USER()
BEGIN 
SELECT * FROM USERS;
END //
DELIMITER ;




DELIMITER //
CREATE procedure UPDATE_USER(in user_id int, in user_name varchar(255), in user_country varchar(255))
BEGIN
UPDATE users
SET
users.id = user_id,
users.name = user_name,
users.country = user_country
where users.id = user_id;
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE DELETE_USER(in user_id int)
BEGIN 
DELETE FROM USERS
WHERE users.id = user_id;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE SHOW_ALL_USER()
BEGIN 
SELECT * FROM USERS;
END //
DELIMITER ;


DELIMITER //
CREATE procedure UPDATE_USER(in user_id int, in user_name varchar(255), in user_country varchar(255))
BEGIN
UPDATE users
SET
users.id = user_id,
users.name = user_name,
users.country = user_country
where users.id = user_id;
END //
DELIMITER ;



DELIMITER //
CREATE PROCEDURE DELETE_USER(in user_id int)
BEGIN 
DELETE FROM USERS
WHERE users.id = user_id;
END //
DELIMITER ;








