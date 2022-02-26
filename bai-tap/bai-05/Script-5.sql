CREATE TABLE question (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name TEXT,
	kind_of_q enum('single', 'multiple')
);

CREATE TABLE answer (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_question INT,
	FOREIGN KEY (id_question) REFERENCES question(id),
	contain TEXT,
	check_answer enum('true','false')
);

INSERT INTO question (id,name,kind_of_q)
VALUES  (null,'what is a?','single'), 
		(null,'what is b?','multiple'),
		(null,'what is c?','single'),
		(null,'what is d?','multiple');
		
	
insert into answer (id, id_question, contain, check_answer) values (null, '1', 'Grouse, greater sage', 'true');
insert into answer (id, id_question, contain, check_answer) values (null, 2, 'Koala', 'true'),(null, 2, 'Shelduck, common', 'true');
insert into answer (id, id_question, contain, check_answer) values (null, '3', 'Salmon, sockeye', 'true');
insert into answer (id, id_question, contain, check_answer) values (null, 4, 'Small-clawed otter', 'true'),(null, 4, 'Spectacled caiman', true);


SELECT q.name , a.contain , a.check_answer 
FROM question q
INNER JOIN answer a ON a.id_question = q.id 