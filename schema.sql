DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE DATABASE bamazon;

CREATE TABLE products (
    id INT NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price DECIMAL (10,2) NOT NULL,
    stock_quantity INT,
    PRIMARY KEY (id)
);

INSERT INTO products (id, product_name, department_name,price,stock_quantity) VALUES
('1','Red Soap','Health & Beauty','$5.99', '25'),
('2','Blue Soap','Health & Beauty','$5.99', '25'),
('3','White Soap','Health & Beauty','$5.99', '25'),
('4','Tube Socks', 'Apparel', '10.99', '50'),
('5','Low Socks', 'Apparel', '10.99', '50'),
('6','Chicken Nuggets', 'Meats', '8.54', '30'),
('7','Porterhouse Steak', 'Meats', '18.59', '20'),
('8','Turkey Nuggets', 'Meats', '7.54', '30'),
('9','Chicken Noodle Soup', 'Soups', '4.99', '75'),
('10','Italian Wedding Soup', 'Soups', '5.99', '75');