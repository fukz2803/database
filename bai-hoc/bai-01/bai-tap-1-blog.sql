CREATE DATABASE blog
CREATE TABLE post (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    author_id INT NOT NULL,
    thumbnail TEXT NOT NULL,
    status TEXT NOT NULL,
    create_at DATE NOT NULL,
    publish_at DATE NOT NULL,
    view_count INT,
    vote_score VARCHAR(5),
    post_type TEXT NOT NULL
)

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    mobile VARCHAR(10) NOT NULL,
    password TEXT NOT NULL,
    avatar TEXT NOT NULL
)

CREATE TABLE tag (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT
)

CREATE TABLE post_tag (
    post_id INT,
    post_tag INT ,
    PRIMARY KEY (post_id, post_tag),
    FOREIGN KEY (post_id) REFERENCES post(id),
    FOREIGN KEY (post_tag) REFERENCES tag(id)
 )

CREATE TABLE disscuss(
    id INT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    author_id INT,
    text TEXT,
    is_public TEXT ,
    create_at DATE,
    FOREIGN KEY (post_id) REFERENCES post(id),
    FOREIGN KEY (author_id) REFERENCES post(author_id)
 )