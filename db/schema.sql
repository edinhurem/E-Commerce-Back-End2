-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- USE DATABASE
USE ecommerce_db;

CREATE TABLE Category (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name varchar(32) NOT NULL
);

CREATE TABLE Product (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_id int,
  product_name varchar(32) NOT NULL,
  price decimal(4,2) NOT NULL,
  stock int NOT NULL DEFAULT '10'
);

CREATE TABLE Tag (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name varchar(32) NOT NULL
);

CREATE TABLE ProductTag (
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_id int NOT NULL,
  tag_id int NOT NULL
);
