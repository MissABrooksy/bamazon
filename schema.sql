CREATE DATABASE bamazon;

USE DATABASE bamazon;

CREATE TABLE products (
    id VARCHAR(30),
    product_name VARCHAR(30),
    department_name VARCHAR(30),
    price INT,
    stock_quantity INT,
    PRIMARY KEY (id)
);