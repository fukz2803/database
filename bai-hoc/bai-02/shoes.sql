CREATE DATABASE shoes;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    username TEXT NOT NULL,
    password TEXT NOT NULL,
    email TEXT NOT NULL,
    mobile VARCHAR(10),
    gender TEXT,
    dob DATE,
    start_at DATE,
    status TEXT,
    address TEXT,
    role TEXT
);

CREATE TABLE brand (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE size (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE gender (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE material (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE color (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE price (
    id INT PRIMARY KEY AUTO_INCREMENT,
    price BIGINT
);

CREATE TABLE product (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    decription TEXT,
    id_pirce INT,
    FOREIGN KEY (id_pirce) REFERENCES price(id),
    image TEXT,
    id_brand INT,
    FOREIGN KEY (id_brand) REFERENCES brand(id),
    status ENUM('in stock', 'out stock'),
    id_gender INT,
    FOREIGN KEY (id_gender) REFERENCES gender(id),
    amount INT,
    id_material INT,
    FOREIGN KEY (id_material) REFERENCES material(id),
    id_category INT,
    FOREIGN KEY (id_category) REFERENCES category(id)
);

CREATE TABLE color_product(
    id_color INT,
    id_product INT,
    PRIMARY KEY (id_product, id_color),
    FOREIGN KEY (id_product) REFERENCES product(id),
    FOREIGN KEY (id_color) REFERENCES color(id)
);

CREATE TABLE size_product (
    id_product INT,
    id_size INT,
    PRIMARY KEY (id_product, id_size),
    FOREIGN KEY (id_product) REFERENCES product(id),
    FOREIGN KEY (id_size) REFERENCES size(id)
);

INSERT INTO price (id, price);
VALUES (null,50000;)