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
    id_price INT,
    FOREIGN KEY (id_price) REFERENCES price(id),
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

INSERT INTO category (id, name)
VALUES (null, 'Sport');

INSERT INTO brand (id, name)
VALUES (null, "ADIDAS");

insert into color (id, name) values (null, 'Aquamarine');
insert into color (id, name) values (null, 'Green');
insert into color (id, name) values (null, 'Khaki');
insert into color (id, name) values (null, 'Purple');
insert into color (id, name) values (null, 'Mauv');

insert into gender (id, name) values (null, 'Male');
insert into gender (id, name) values (null, 'Female');
insert into gender (id, name) values (null, 'Unisex');

insert into material (id, name) values (null, 'Leather');
insert into material (id, name) values (null, 'Canvas');
insert into material (id, name) values (null, 'Foam');

insert into size (id, name) values (null, 'S');
insert into size (id, name) values (null, '2XL');
insert into size (id, name) values (null, 'M');
insert into size (id, name) values (null, 'L');
insert into size (id, name) values (null, 'S');

INSERT INTO price (id, price)
VALUES (null, 5200000);
INSERT INTO price (id, price)
VALUES (null, 2500000);
INSERT INTO price (id, price)
VALUES (null, 3800000);
INSERT INTO price (id, price)
VALUES (null, 5500000);

INSERT INTO product (id, name, decription, id_price, image, id_brand, status, id_gender, amount, id_material, id_category)
VALUES (null, 'ULTRABOOST 22', null, '1', null, '1', 'in stock', '1', '255', '1', '1');
INSERT INTO product (id, name, decription, id_price, image, id_brand, status, id_gender, amount, id_material, id_category)
VALUES (null, 'SUPERSTAR', null, '2', null, '1', 'in stock', '1', '126', '2', '1');
INSERT INTO product (id, name, decription, id_price, image, id_brand, status, id_gender, amount, id_material, id_category)
VALUES (null, 'ALPHALAVA WEB', null, '3', null, '1', 'in stock', '2', '484', '3','1');
INSERT INTO product (id, name, decription, id_price, image, id_brand, status, id_gender, amount, id_material, id_category)
VALUES (null, 'YEEZY 500', null, '4', null, '1', 'in stock', '2', '181', '3', '1');

INSERT INTO size_product (id_product, id_size)
VALUES ('1', '5');
INSERT INTO size_product (id_product, id_size)
VALUES ('2', '3');
INSERT INTO size_product (id_product, id_size)
VALUES ('3', '1');
INSERT INTO size_product (id_product, id_size)
VALUES ('4', '4');

INSERT INTO color_product (id_product, id_color)
VALUES ('1', '3');
INSERT INTO color_product (id_product, id_color)
VALUES ('2', '1');
INSERT INTO color_product (id_product, id_color)
VALUES ('3', '2');