CREATE DATABASE movie;

CREATE TABLE film (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT,
    description TEXT,
    poster TEXT,
    length INT,
    rating VARCHAR(5),
    id_director INT,
    FOREIGN KEY (id_director) REFERENCES director(id),
    release_date DATE
);

CREATE TABLE director (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    avatar TEXT,
    description TEXT
);

CREATE TABLE actor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    last_name TEXT,
    first_name TEXT,
    avatar TEXT
);

CREATE TABLE film_actor(
    id_film INT,
    id_actor INT,
    PRIMARY KEY (id_film,id_actor),
    FOREIGN KEY (id_film) REFERENCES film(id),
    FOREIGN KEY (id_actor) REFERENCES actor(id)
);

CREATE TABLE category (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
);

CREATE TABLE film_category(
    id_film INT,
    id_category INT,
    PRIMARY KEY (id_film,id_category),
    FOREIGN KEY (id_film) REFERENCES film(id),
    FOREIGN KEY (id_category) REFERENCES category(id)
);