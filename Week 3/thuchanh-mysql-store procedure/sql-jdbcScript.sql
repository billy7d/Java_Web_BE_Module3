
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

select * from users;

