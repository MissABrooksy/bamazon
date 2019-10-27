DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE DATABASE bamazon;

CREATE TABLE products (
    id VARCHAR(30) NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT,
    PRIMARY KEY (id)
);

INSERT INTO products (id, product_name, department_name,price,stock_quantity) VALUES
('Red Soap','Red Soap','Health & Beauty','$5.99', '25'),
('Blue Soap','Blue Soap','Health & Beauty','$5.99', '25'),
('White Soap','White Soap','Health & Beauty','$5.99', '25'),
('Tube Socks','Tube Socks', 'Apparel', '10.99', '50'),
('Low Socks','Low Socks', 'Apparel', '10.99', '50'),
('Chicken','Chicken Nuggets', 'Meats', '8.54', '30'),
('Beef','Porterhouse Steak', 'Meats', '18.59', '20'),
('Turkey','Turkey Nuggets', 'Meats', '7.54', '30'),
('Soup','Chicken Noodle Soup', 'Soups', '4.99', '75'),
('Soup','Italian Wedding Soup', 'Soups', '5.99', '75');