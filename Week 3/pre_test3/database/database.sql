CREATE DATABASE PRE_TEST3;
USE PRE_TEST3;

CREATE TABLE PRODUCT(
id int auto_increment primary key,
product_name nvarchar(100),
category_no int,
price double
);

CREATE TABLE category(
category_id	int primary key,
category_name nvarchar(100)
);



DELIMITER //
CREATE PROCEDURE select_all_productget_product_by_id()
BEGIN 
SELECT * FROM PRODUCT;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE get_product_by_id(in id int)
BEGIN
SELECT * FROM PRODUCT WHERE product.id = id;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE create_product(in product_name nvarchar(100),in category_no int, in price double)
BEGIN 
INSERT INTO product(product_name,category_no,price) values(product_name,category_no,price);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE delete_product(in id int)
BEGIN 
DELETE FROM PRODUCT WHERE product.id = id;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE update_product(in id int, in product_name nvarchar(100), in category_no int, in price double)
BEGIN 
UPDATE product
set product.product_name = product_name, product.category_no = category_no, product.price = price
WHERE product.id = id;
END //
DELIMITER ;









