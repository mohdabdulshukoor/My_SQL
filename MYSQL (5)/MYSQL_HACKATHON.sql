use sakila;

-- task 1
SELECT 
    first_name, last_name
FROM
    actor;

-- task 2 i
SELECT 
    first_name, last_name
FROM
    actor;
    
-- task 2 ii
SELECT 
    first_name, last_name
FROM
    actor
WHERE
    first_name = last_name;


-- task 2 iii
SELECT 
    COUNT(first_name), first_name
FROM
    actor
GROUP BY first_name;
SELECT 
    COUNT(last_name), last_name
FROM
    actor
GROUP BY last_name;


-- task 3
SELECT 
    first_name, COUNT(*) AS  'number of repititions of first_name'
FROM
    actor
GROUP BY first_name
HAVING COUNT(first_name) > 1;

SELECT 
    last_name, COUNT(*) AS 'number of repititions of last_name'
FROM
    actor
GROUP BY last_name
HAVING COUNT(last_name) > 1;

SELECT 
    first_name, COUNT(*) AS  'no repititions of first_name'
FROM
    actor
GROUP BY first_name
HAVING COUNT(first_name)  < 2;

SELECT 
    last_name, COUNT(*) AS 'no repititions of last_name'
FROM
    actor
GROUP BY last_name
HAVING COUNT(last_name) < 2;

-- task 4 each every details (overview) of films
SELECT 
    *
FROM
    film;

-- task 5 description of rating categories.......
SELECT 
    f.rating, ftxt.description
FROM
    film_text ftxt
        JOIN
    inventory i ON ftxt.film_id = i.film_id
        JOIN
    film f ON ftxt.film_id = f.film_id
GROUP BY f.rating;

-- task 6 i
SELECT 
    film_id, title, replacement_cost
FROM
    film
WHERE
    replacement_cost <= 9;
 
-- task 6 ii
SELECT 
    film_id, title, replacement_cost
FROM
    film
WHERE
    replacement_cost BETWEEN 15 AND 20;

-- task 6 iii
SELECT 
    film_id, title, replacement_cost, rental_rate
FROM
    film
WHERE
    (replacement_cost , rental_rate) IN (SELECT 
            MAX(replacement_cost), MIN(rental_rate)
        FROM
            film);

-- task 7
SELECT 
    f.title AS 'films',
    COUNT(fact.actor_id) AS 'number of actors'
FROM
    film f
        JOIN
    film_actor fact ON f.film_id = fact.film_id
GROUP BY f.title;

-- task 8
SELECT 
    title
FROM
    film_text
WHERE
    title LIKE 'k%' OR title LIKE 'q%';

-- task 9
SELECT DISTINCT
    fact.actor_id,
    ftxt.title,
    CONCAT(a.first_name, '', a.last_name) AS 'actors'
FROM
    actor a
        JOIN
    film_actor fact ON a.actor_id = fact.actor_id
        JOIN
    film f ON fact.film_id = f.film_id
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    film_text ftxt ON i.film_id = ftxt.film_id
WHERE
    ftxt.title = 'agent truman';

-- task 10
SELECT 
    f.film_id, ftxt.title, f.rating
FROM
    film f
        JOIN
    inventory i ON f.film_id = i.film_id
        JOIN
    film_text ftxt ON i.film_id = ftxt.film_id
WHERE
    f.rating = 'g'
GROUP BY ftxt.title;

-- task 11
SELECT 
    title, rental_duration
FROM
    film
GROUP BY title
ORDER BY rental_duration DESC;
 
-- task 12
SELECT 
    c.name,
    c.category_id,
    SUM(f.replacement_cost) / COUNT(*) - SUM(f.rental_rate) / COUNT(*) AS 'the  difference(average)  b/w  rental_rate  and  replacement_cost'
FROM
    film f
        JOIN
    film_category fcat ON f.film_id = fcat.film_id
        JOIN
    category c ON fcat.category_id = c.category_id
HAVING (SUM(f.replacement_cost) / COUNT(*) - SUM(f.rental_rate) / COUNT(*)) > 15;

-- task 13
SELECT 
    c.name, COUNT(fcat.category_id) AS 'numbers of films'
FROM
    film_category fcat
        JOIN
    category c ON fcat.category_id = c.category_id
GROUP BY c.name
HAVING COUNT(fcat.category_id) BETWEEN 60 AND 70;






