CREATE DATABASE ice_cream_shop;
use ice_cream_shop;

CREATE TABLE users(
user_id int primary key auto_increment,
user_name varchar(100) NOT NULL,
user_password varchar(100) NOT NULL,
user_email varchar(225) NOT NULL
);

CREATE TABLE category(
category_id int primary Key auto_increment,
category_name varchar(100) NOT NULL
);

CREATE TABLE ice_cream(
ice_cream_id int PRIMARY KEY auto_increment,
category_id int,
name varchar(255) NOT NULL,
discount int,
ice_description text,
price double(10,3) NOT NULL,
src text,
sold_quantity int,
foreign key (category_id) references category(category_id)
 );
 
 CREATE TABLE orders(
 order_id int primary key auto_increment,
 name_customer varchar(50), 
 address_customer varchar(200),
 numberphone_customer varchar(20),
 total_money double(10,3)
 );
 
 CREATE TABLE item(
 item_id int primary key auto_increment,
 order_id int ,
 ice_cream_id int,
 pice_discount double(10,3) NOT NULL,
 quality int NOT NULL,
 total_money double (10,3),
 foreign key (order_id) references orders (order_id),
 foreign key (ice_cream_id) references ice_cream(ice_cream_id)
 );

--PROCEDURE

DELIMITER $$
CREATE PROCEDURE get_ice_cream_by_category(IN category__id INT)
BEGIN
    SELECT ice_cream.ice_cream_id, ice_cream.category_id ,ice_cream.name ,ice_cream.discount, ice_cream.ice_description, ice_cream.price, ice_cream.sold_quantity, ice_cream.src
    FROM ice_cream
    join category on ice_cream.category_id = category.category_id
	where ice_cream.category_id = category__id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sort_ice_cream_by_price()
begin
	SELECT ice_cream.ice_cream_id, ice_cream.category_id ,ice_cream.name ,ice_cream.discount, ice_cream.ice_description, ice_cream.price, ice_cream.sold_quantity, ice_cream.src
	FROM ice_cream
    ORDER BY ice_cream.price;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sort_ice_cream_by_quantity()
begin
	SELECT ice_cream.ice_cream_id, ice_cream.category_id ,ice_cream.name ,ice_cream.discount, ice_cream.ice_description, ice_cream.price, ice_cream.sold_quantity, ice_cream.src
	FROM ice_cream
    ORDER BY ice_cream.sold_quantity;
END$$
DELIMITER ;

DELIMITER $$

DELIMITER $$
CREATE procedure update_IceCream(in ice_cream_id1 int, in category_id1 int,in name1 varchar(255),in discount1 int, in ice_description1 text, in price1 double(10,3), in src1 text, in sold_quantity1 int)
BEGIN
UPDATE ice_cream
SET category_id = category_id1, name = name1, discount = discount1, ice_description = ice_description1, price = price1, sold_quantity = sold_quantity1, src = src1
WHERE ice_cream.ice_cream_id = ice_cream_id1;
END$$
DELIMITER ;


DELIMITER $$
CREATE procedure insert_IceCream(in category_id int,in name varchar(255),in discount int,
in ice_description text, in price double(10,3), in src text, in sold_quantity int)
BEGIN
INSERT INTO ice_cream(category_id,name,discount,ice_description,price,src,sold_quantity)
VALUES (category_id,name,discount,ice_description,price,src,sold_quantity);
END$$
DELIMITER ;


DELIMITER $$
CREATE PROCEDURE insert_IceCreamselect_all_ice()
BEGIN
SELECT * FROM ice_cream;
END$$
DELIMITER ;


DELIMITER $$
CREATE procedure delete_ice(in id int)
BEGIN
delete from ice_cream where ice_cream.ice_cream_id = id;
END$$
DELIMITER ;


DELIMITER $$
CREATE procedure search_ice_cream_by_id(in id int)
BEGIN
SELECT ice_cream.ice_cream_id, ice_cream.category_id ,ice_cream.name ,ice_cream.discount, ice_cream.ice_description, ice_cream.price, ice_cream.sold_quantity, ice_cream.src
FROM ice_cream
Where ice_cream.ice_cream_id = id;
END$$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_category(in id int, in name varchar(255))
BEGIN
INSERT INTO category(category.category_id,category.category_name) values(id,name);
END$$
DELIMITER ;

DELIMITER //
CREATE PROCEDURE select_all_ice()
BEGIN
SELECT * FROM ice_cream;
END//
DELIMITER //







 
 