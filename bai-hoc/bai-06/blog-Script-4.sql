SELECT p.title , p.content , p.create_at ,
json_arrayagg(t.name) as tag,
json_object("id", a.id, "name", a.name, "amount", (SELECT COUNT(p.id)
													from author a 
													inner join post p on a.id = p.id_author 
													WHERE a.id = (SELECT p2.id_author  
																	FROM post p2
																	WHERE p2.id = 1)))
FROM post p 
inner join post_tag pt on pt.id_post = p.id 
inner join tag t on pt.id_tag = t.id 
inner join author a on p.id_author = a.id
WHERE p.id = 1
GROUP by a.id 


select p.title , p.content, p.create_at, 
	(select JSON_ARRAYAGG(t2.name) 
	from tag t2
	inner join post_tag pt2 on pt2.id_tag= t2.id
	where pt2.id_post= 1) as tag, 
	JSON_OBJECT("id",a.id, "name", a.name, "amount", (select count(p.id)
														from author a 
														inner join post p on a.id = p.id_author 
														where a.id = (select p2.id_author
																	from post p2
																	where p2.id = 1))) as author,
	(SELECT JSON_ARRAYAGG(JSON_OBJECT("id", d.id,"name", a.name,"comment", d.comment, "create_at",d.create_at ))
	FROM discuss d 
	INNER JOIN post p on p.id = d.id_post 
	INNER JOIN author a ON a.id  = d.id_author 
	WHERE p.id = 1) as discuss
from post p 
inner join author a on a.id = p.id_author 
where p.id = 1

SELECT a.name, COUNT(p.id)
from author a 
inner join post p on a.id = p.id_author 
GROUP by a.id

SELECT COUNT(p.id) 
FROM author a 
inner join post p on a.id = p.id_author 
WHERE a.id = (SELECT p2.id_author  
				FROM post p2
				WHERE p2.id = 1)	

SELECT p2.id_author  
FROM post p2
WHERE p2.id = 1

