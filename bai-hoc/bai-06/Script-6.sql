CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `gender` enum('Female','Male') DEFAULT NULL,
  `address` text NOT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `create_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
)

insert into users (id, name, gender, address, mobile, create_at) values (null, 'Sonja Fawdry', 'Male', 'Indonesia', '455-388-3092', '2021-10-17');
insert into users (id, name, gender, address, mobile, create_at) values (null, 'Debi McIlvenny', 'Male', 'Costa Rica', '393-400-3378', '2021-09-22');
insert into users (id, name, gender, address, mobile, create_at) values (null, 'Adelind Gilyatt', 'Female', 'Netherlands', '509-961-4645', '2021-02-25');
insert into users (id, name, gender, address, mobile, create_at) values (null, 'Tedd Blenkinsop', 'Female', 'Azerbaijan', '331-648-8911', '2021-02-27');
insert into users (id, name, gender, address, mobile, create_at) values (null, 'Ruthi Nias', 'Female', 'Philippines', '731-194-8760', '2021-04-05');