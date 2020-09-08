CREATE DATABASE carselling;
CREATE TABLE customers(
customerNumber INT PRIMARY KEY NOT NULL,
customerName VARCHAR(50) NOT NULL,
contactLastName VARCHAR(50) NOT NULL,
contactFirstName VARCHAR(50) NOT NULL,
customerPhone VARCHAR(50) NOT NULL,
addressLine1 VARCHAR(50) NOT NULL,
addressLine2 VARCHAR(50) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
postalCode VARCHAR(50) NOT NULL,
country VARCHAR(50) NOT NULL,
creditLimit INT(50)
);


CREATE TABLE productline(
product_id INT,
product_description VARCHAR(250)
);

CREATE TABLE products(
product_code VARCHAR(255),
product_name VARCHAR(255),
product_supplier VARCHAR(255),
product_inStock INT,
import_price DOUBLE(16,5),
sell_price DOUBLE
);

CREATE TABLE orders(
orderNumber  INT NOT NULL PRIMARY KEY,
orderDate  DATE NOT NULL,
shippingRequiredDate DATE NOT NULL,
shippedDate DATE,
OrderStatus VARCHAR(15) NOT NULL,
comments TEXT,
quantityOrdered INT NOT NULL,
priceEach DOUBLE NOT NULL
);

CREATE TABLE payments(
customerNumber  INT NOT NULL ,
checkNumber VARCHAR(50) NOT NULL,
paymentDate DATE NOT NULL,
amount DOUBLE NOT NULL,
constraint payment_fk FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber)
);

CREATE TABLE employees(
employee_id INT,
boss_id	INT,
employee_name VARCHAR(100),
employee_email VARCHAR(100),
employee_job VARCHAR(100)
);

CREATE TABLE offices(
office_id	INT,
office_address VARCHAR(255),
office_tel INT,
office_country VARCHAR(100)
);

