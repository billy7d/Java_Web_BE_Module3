CREATE DATABASE DEMO;
CREATE TABLE PRODUCT(
ID INT,
PRODUCTCODE VARCHAR(10),
productName VARCHAR(50),
productPrice DOUBLE,
productAmount INT,
productDescription TEXT,
productStatus VARCHAR(50)
);

INSERT INTO PRODUCT (ID,productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus)
VALUES (1,'A123','IPHONE',23000,1,'NO DES','WORKING');

INSERT INTO PRODUCT (ID,productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus)
VALUES (12,'B123','SAMSUNG',45000,9,'NO DES','WORKING');

INSERT INTO PRODUCT (ID,productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus)
VALUES (9,'C11','ASUS',102000,7,'NO DES','WORKING');

SELECT * FROM PRODUCT;




ALTER TABLE PRODUCT
ADD UNIQUE INDEX IDX_PRODUCT(PRODUCTCODE);

explain select productcode from product;

ALTER TABLE PRODUCT
ADD INDEX COMPO_INDEX(PRODUCTNAME, PRODUCTPRICE);

EXPLAIN SELECT PRODUCTNAME,PRODUCTPRICE FROM PRODUCT; 

DELIMITER //
CREATE PROCEDURE GETALLPRODUCT()
BEGIN 
SELECT * FROM PRODUCT;
END //
DELIMITER ;

CALL GETALLPRODUCT();


DELIMITER //
CREATE PROCEDURE ADDNEWPROD()
BEGIN 
INSERT INTO PRODUCT (ID,productCode,
productName,
productPrice,
productAmount,
productDescription,
productStatus)
VALUES (10,'C15','NEW PRODUCT',102000,7,'NO DES','WORKING');
END //
DELIMITER ;

DROP procedure `ADDNEWPROD`;

CALL ADDNEWPROD();

SELECT * FROM PRODUCT;

DELIMITER //
CREATE PROCEDURE EDIT(IN ID1 INT, IN PRODUCTCODE1 VARCHAR(10),
IN productName1 VARCHAR(50),
IN productPrice1 DOUBLE)
BEGIN 
update product
set 
productcode = PRODUCTCODE1,
productName = productName1,
productPrice = productPrice1
where ID = ID1;
END //
DELIMITER ;

SELECT * FROM PRODUCT;

CALL EDIT(10,'HUNG95','HUNGDZAI',1000000000000);

SELECT * FROM PRODUCT;

CREATE VIEW proView AS
SELECT products.productcode, products.productname
FROM products;

select * from proview;

CREATE OR REPLACE VIEW proview as
select products.productline, products.buyprice, products.productcode
from products
where products.productcode = 'S10_1949';

select* from proview;

drop view proview;




