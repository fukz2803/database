CREATE DATABASE library;


CREATE TABLE pubCompany (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE books (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    pubYear INT,
    id_pubCompany INT,
    FOREIGN KEY (id_pubCompany) REFERENCES pubCompany(id)
);


CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE author (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE category_book(
    id_book INT,
    id_category INT,
    PRIMARY KEY (id_book, id_category),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_category) REFERENCES category(id)
);

CREATE TABLE author_book(
    id_book INT,
    id_author INT,
    PRIMARY KEY (id_book, id_author),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_author) REFERENCES author(id)
);

CREATE TABLE librarian(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE reeders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE borrow_book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    borrowDate DATE,
    returnDate DATE,
    id_librarian INT,
    FOREIGN KEY (id_librarian) REFERENCES librarian(id),
    id_reeder INT,
    FOREIGN KEY (id_reeder) REFERENCES reeders(id)
);

CREATE TABLE return_book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    borrowDate DATE,
    returnDate DATE,
    overDay INT,
    id_librarian INT,
    FOREIGN KEY (id_librarian) REFERENCES librarian(id),
    id_reeder INT,
    FOREIGN KEY (id_reeder) REFERENCES reeders(id)
);

CREATE TABLE item_borrow (
    id_book INT,
    id_borrow INT,
    PRIMARY KEY (id_book, id_borrow),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_borrow) REFERENCES borrow_book(id)
);

CREATE TABLE item_return (
    id_book INT,
    id_return INT,
    PRIMARY KEY (id_book, id_return),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_return) REFERENCES return_book(id)
);

insert into pubCompany (id, name) values (null, 'Corkery, Reichert and Jerde');
insert into pubCompany (id, name) values (null, 'Von-Nienow');
insert into pubCompany (id, name) values (null, 'Ritchie Group');
insert into pubCompany (id, name) values (null, 'Herman, Barrows and Shanahan');
insert into pubCompany (id, name) values (null, 'Olson, Kertzmann and Thiel');
insert into pubCompany (id, name) values (null, 'Berge, Haag and Feest');
insert into pubCompany (id, name) values (null, 'O''Reilly-Koepp');
insert into pubCompany (id, name) values (null, 'Bauch LLC');
insert into pubCompany (id, name) values (null, 'Cole Inc');
insert into pubCompany (id, name) values (null, 'Grimes-Brown');

INSERT INTO books (id, title, pubYear, id_pubCompany) VALUES (null, 'Infernal', '2005', '2');
INSERT INTO books (id, title, pubYear, id_pubCompany) VALUES (null, 'Lfakfi', '2014', '3');
INSERT INTO books (id, title, pubYear, id_pubCompany) VALUES (null, 'JFlnaslfk', '2015', '1');
INSERT INTO books (id, title, pubYear, id_pubCompany) VALUES (null, 'lknaslkfnlaksn', '2010', '10');
INSERT INTO books (id, title, pubYear, id_pubCompany) VALUES (null, 'sfasfasfasf', '2019', '9');

INSERT INTO category (id, name) VALUES (null, 'Horror');
INSERT INTO category (id, name) VALUES (null, 'Drama');
INSERT INTO category (id, name) VALUES (null, 'Comedy');
INSERT INTO category (id, name) VALUES (null, 'Romance');

insert into author (id, name) values (null, 'Kelbee Sandwich');
insert into author (id, name) values (null, 'Dallis Bester');
insert into author (id, name) values (null, 'Ezequiel Shaxby');
insert into author (id, name) values (null, 'Herculie Fullick');
insert into author (id, name) values (null, 'Amelie Lympany');
insert into author (id, name) values (null, 'Viole Eland');
insert into author (id, name) values (null, 'Cristal Stockdale');
insert into author (id, name) values (null, 'Jamill Ruddin');
insert into author (id, name) values (null, 'Rebecka Sanbroke');
insert into author (id, name) values (null, 'Adela Dumbar');

insert into librarian (id, name) values (null, 'Meghan Goschalk');
insert into librarian (id, name) values (null, 'Engelbert Pehrsson');
insert into librarian (id, name) values (null, 'Nickey Morrowe');
insert into librarian (id, name) values (null, 'Marshal Wreford');

insert into reeders (id, name) values (null, 'Tuesday Astle');
insert into reeders (id, name) values (null, 'Collie Smiths');
insert into reeders (id, name) values (null, 'Fayre Willden');
insert into reeders (id, name) values (null, 'Ernesta Gellan');

INSERT INTO author_book (id_book, id_author) VALUES ('1','2');
INSERT INTO author_book (id_book, id_author) VALUES ('2','3');
INSERT INTO author_book (id_book, id_author) VALUES ('3','2');
INSERT INTO author_book (id_book, id_author) VALUES ('4','4');
INSERT INTO author_book (id_book, id_author) VALUES ('5','1');

INSERT INTO category_book (id_book, id_category) VALUES ('1','2');
INSERT INTO category_book (id_book, id_category) VALUES ('1','3');
INSERT INTO category_book (id_book, id_category) VALUES ('2','1');
INSERT INTO category_book (id_book, id_category) VALUES ('2','4');
INSERT INTO category_book (id_book, id_category) VALUES ('3','2');
INSERT INTO category_book (id_book, id_category) VALUES ('4','3');
INSERT INTO category_book (id_book, id_category) VALUES ('5','4');

insert into borrow_book (id, borrowDate, returnDate, id_librarian, id_reeder) values (null, '27/2/2021', '21/2/2021', 4, 2);
insert into borrow_book (id, borrowDate, returnDate, id_librarian, id_reeder) values (null, '25/2/2022', '16/7/2021', 1, 1);
insert into borrow_book (id, borrowDate, returnDate, id_librarian, id_reeder) values (null, '26/9/2021', '21/6/2021', 2, 3);
insert into borrow_book (id, borrowDate, returnDate, id_librarian, id_reeder) values (null, '30/1/2022', '26/1/2022', 3, 1);

insert into item_borrow (id_book, id_borrow) values (2, 4);
insert into item_borrow (id_book, id_borrow) values (3, 3);
insert into item_borrow (id_book, id_borrow) values (4, 1);
insert into item_borrow (id_book, id_borrow) values (5, 2);
