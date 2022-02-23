SELECT JSON_ARRAYAGG(
JSON_OBJECT('title', f.title, 'rating', f.rating, 'rental_rate',f.rental_rate)) AS film_info,
AVG(f.rental_rate) AS Avarage_rental_rate
FROM film f 
WHERE f.rating = 'G'

SELECT JSON_ARRAYAGG(
JSON_OBJECT('title',f.title ,'special_features', f.special_features)) AS film_info,
COUNT(f.film_id) AS count_film
FROM film f 
WHERE f.special_features LIKE '%Deleted Scenes%'

SELECT f.title 
FROM film f 
WHERE f.title LIKE '%ACADEMY%'
