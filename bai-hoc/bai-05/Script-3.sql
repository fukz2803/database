SELECT c.country , JSON_ARRAYAGG(JSON_OBJECT('id',c2.city_id,'city',c2.city)), COUNT(c2.city_id) 
FROM country c INNER join city c2 
ON c.country_id = c2.country_id 
GROUP BY c.country_id 

SELECT c.country , c2.city 
FROM country c , city c2 
WHERE c.country_id = c2.country_id 

