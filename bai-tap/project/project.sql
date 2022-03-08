CREATE TABLE vip_status (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT
)

CREATE TABLE users (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_name TEXT NOT NULL,
	password TEXT NOT NULL,
	email TEXT NOT NULL,
	create_at DATE,
	balance BIGINT,
	id_vip_status INT,
	FOREIGN KEY (id_vip_status) REFERENCES vip_status (id)
)

CREATE TABLE admins (
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_name TEXT NOT NULL,
	password TEXT NOT NULL,
	email TEXT NOT NULL,
	create_at DATE
)

CREATE TABLE age_rating (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL
)

CREATE TABLE category (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL
)

CREATE TABLE actor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL
)

CREATE TABLE director (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL
)

CREATE TABLE languages (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT NOT NULL
)

CREATE TABLE film (
	id INT PRIMARY KEY AUTO_INCREMENT,
	title TEXT NOT NULL,
	description TEXT,
	release_year YEAR,
	id_director INT,
	FOREIGN KEY (id_director) REFERENCES director (id),
	id_language INT,
	FOREIGN KEY (id_language) REFERENCES languages(id),
	length INT,
	id_age_rating INT,
	FOREIGN KEY (id_age_rating) REFERENCES age_rating(id),
	imdb_rating INT
)

CREATE TABLE discuss (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_user INT,
	FOREIGN KEY (id_user) REFERENCES users(id),
	id_film INT,
	FOREIGN KEY (id_film) REFERENCES film(id),
	comment TEXT,
	create_at DATE
)

CREATE TABLE film_category (
	id_film INT,
	id_category INT,
	PRIMARY KEY (id_film, id_category),
	FOREIGN KEY (id_film) REFERENCES film(id),
	FOREIGN KEY (id_category)  REFERENCES category(id)
)

CREATE TABLE film_actor (
	id_film INT,
	id_actor INT,
	PRIMARY KEY (id_film, id_actor),
	FOREIGN KEY (id_film) REFERENCES film(id),
	FOREIGN KEY (id_actor) REFERENCES actor(id)
)

CREATE TABLE film_director (
	id_film INT,
	id_director INT,
	PRIMARY KEY (id_film, id_director),
	FOREIGN KEY (id_film) REFERENCES film(id),
	FOREIGN KEY (id_director) REFERENCES director(id)
)

insert into vip_status (id, name)
values (null, 'normal'),
		(null, '30days');

insert into users (id, user_name, password, email, create_at, balance, id_vip_status)
values (null, 'jgresch0', 'Kk1qItqbhavt', 'tgartenfeld0@vkontakte.ru', '2021-06-18', 9544, 2),
		(null, 'creubel1', 'LNBJuvmhLFA', 'cmorhall1@parallels.com', '2021-06-03', 27543, 1),
		(null, 'mjolland2', 'iBMtGeB0zcS', 'vbrabbs2@prlog.org', '2021-02-18', 10315, 1),
		(null, 'hdymoke3', 'nUSeA4z', 'tharesign3@sina.com.cn', '2021-07-17', 74517, 2),
		(null, 'vwoolcocks4', 'TvEAsYXfUBu9', 'mdullard4@youtu.be', '2021-09-02', 42798, 2);

insert into admins (id, user_name, password, email, create_at) 
values (null, 'asapey0', 'STer2uIDw66', 'cdorracott0@shareasale.com', '2021-07-09'),
		(null, 'jchugg1', 'P9zgJla', 'tropars1@salon.com', '2021-03-24'),
		(null, 'gsole2', 'MfKCgrIU7Yg', 'gtschiersch2@gnu.org', '2021-12-01');

INSERT into age_rating (id,name)
VALUES (null, 'G'),
		(null, 'PG'),
		(null, 'PG-13'),
		(null, 'R'),
		(null, 'NC-17');
		
INSERT INTO category (id, name)
VALUES (null, 'Drama'),
		(null,'Action'),
		(null,'Comedy'),
		(null,'Horror'),
		(null,'Romance'),
		(null,'Adventure');
		
insert into actor (id, name) values (null, 'Reece Witherup'),
(null, 'Whittaker McElhargy'),
(null, 'Frank Cuxon'),
(null, 'Pen Cullip'),
(null, 'Alene Salzburg');

insert into director (id, name) values (null, 'Jorey Chinnick'),
(null, 'Gerri Hawkridge'),
(null, 'Paddy Heenan'),
(null, 'Leighton Prescote'),
(null, 'Arielle Maccrea'),
(null, 'Morgan Rishman'),
(null, 'Kinny Staniford'),
(null, 'Opalina Hissett'),
(null, 'Goldie Tarling'),
(null, 'Glennis Odo');

insert into languages (id, name) values (null, 'Spanish'),
(null, 'Polish'),
(null, 'Romanian'),
(null, 'Portuguese'),
(null, 'Filipino');

insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'You''re Not You', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut', 1994, 4, 4, 142, 1, 1.9);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Love', 'ut massa volutpat convallis morbi odio', 1990, 9, 4, 140, 3, 4.3);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Dust in the Wind (Lian lian feng chen)', 'ultrices vel augue vestibulum ante ipsum primis in', 2007, 9, 2, 147, 2, 4.7);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'High and the Mighty, The', 'turpis donec posuere metus vitae ipsum aliquam non mauris', 1999, 8, 3, 161, 1, 3.6);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Love Lasts Three Years (L''amour dure trois ans)', 'tempus vel pede morbi porttitor lorem', 1989, 2, 1, 176, 3, 4.2);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'American Psycho', 'nisl duis bibendum felis sed interdum venenatis turpis', 2010, 7, 1, 156, 1, 3.7);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Drömkåken', 'odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', 2006, 5, 1, 138, 4, 3.1);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Bakhita', 'a ipsum integer a nibh', 1995, 1, 2, 145, 3, 2.3);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Across the Bridge', 'nisi nam ultrices libero non mattis pulvinar nulla pede', 1989, 3, 5, 158, 4, 4.5);
insert into film (id, title, description, release_year, id_director, id_language, length, id_age_rating, imdb_rating) values (null, 'Bay, The', 'maecenas rhoncus aliquam lacus morbi', 2004, 9, 3, 146, 5, 2.9);

insert into discuss (id, id_user, id_film, comment, create_at) values (null, 27, 18, 'vivamus tortor duis mattis egestas metus', '2022-02-16');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 29, 23, 'leo rhoncus sed vestibulum sit', '2021-06-09');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 30, 19, 'mi in porttitor pede justo eu massa', '2021-10-15');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 29, 20, 'vel augue vestibulum rutrum rutrum neque', '2021-08-08');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 29, 23, 'sem duis aliquam convallis nunc proin at turpis a pede', '2021-09-07');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 27, 19, 'vel pede morbi porttitor lorem', '2021-02-03');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 27, 21, 'suspendisse accumsan tortor quis turpis', '2022-01-23');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 30, 21, 'luctus et ultrices posuere cubilia curae donec pharetra magna', '2021-05-30');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 26, 22, 'lacus morbi quis tortor id', '2021-06-02');
insert into discuss (id, id_user, id_film, comment, create_at) values (null, 27, 25, 'adipiscing elit proin risus praesent lectus vestibulum quam sapien', '2021-03-19');


insert into film_category (id_film, id_category) values (16, 6);
insert into film_category (id_film, id_category) values (16, 3);
insert into film_category (id_film, id_category) values (17, 3);
insert into film_category (id_film, id_category) values (17, 5);
insert into film_category (id_film, id_category) values (24, 2);
insert into film_category (id_film, id_category) values (16, 5);
insert into film_category (id_film, id_category) values (25, 3);
insert into film_category (id_film, id_category) values (18, 2);
insert into film_category (id_film, id_category) values (16, 2);
insert into film_category (id_film, id_category) values (19, 6);
insert into film_category (id_film, id_category) values (20, 2);
insert into film_category (id_film, id_category) values (23, 2);
insert into film_category (id_film, id_category) values (23, 1);
insert into film_category (id_film, id_category) values (20, 4);
insert into film_category (id_film, id_category) values (21, 2);
insert into film_category (id_film, id_category) values (23, 2);

insert into film_actor (id_film, id_actor) values (22, 4);
insert into film_actor (id_film, id_actor) values (22, 3);
insert into film_actor (id_film, id_actor) values (21, 3);
insert into film_actor (id_film, id_actor) values (16, 5);
insert into film_actor (id_film, id_actor) values (19, 3);
insert into film_actor (id_film, id_actor) values (17, 3);
insert into film_actor (id_film, id_actor) values (24, 1);
insert into film_actor (id_film, id_actor) values (22, 2);
insert into film_actor (id_film, id_actor) values (24, 4);
