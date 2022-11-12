use sakila;

 -- task 1
SELECT 
    category_id, name
FROM
    category
WHERE
    category_id = (SELECT 
            category_id
        FROM
            film_category
        WHERE
            film_id = (SELECT 
                    film_id
                FROM
                    inventory
                GROUP BY film_id
                ORDER BY COUNT(inventory_id) DESC
                LIMIT 1));
 
 -- task 2
SELECT 
    a.actor_id,
    CONCAT(a.first_name, '', a.last_name) AS fullname,
    SUM(replacement_cost) AS total_replacement_cost
FROM
    film f
        INNER JOIN
    film_actor ft ON f.film_id = ft.film_id
        INNER JOIN
    actor a ON a.actor_id = ft.actor_id
GROUP BY a.actor_id
ORDER BY SUM(replacement_cost) DESC;
 
 -- task 3
SELECT 
    c.name, SUM(p.amount)
FROM
    payment p
        INNER JOIN
    rental r ON p.rental_id = r.rental_id
        INNER JOIN
    inventory i ON r.inventory_id = i.inventory_id
        INNER JOIN
    film f ON i.film_id = f.film_id
        INNER JOIN
    film_category fcat ON f.film_id = fcat.film_id
        INNER JOIN
    category c ON fcat.category_id = c.category_id
GROUP BY c.name
ORDER BY SUM(p.amount) DESC;

 -- task 4
 SELECT 
    i.film_id,
    f.title AS ' movie names ',
    COUNT(i.film_id) AS 'numbers of copies'
FROM
    inventory i
        INNER JOIN
    film f ON i.film_id = f.film_id
GROUP BY f.title
HAVING f.title IN ('brotherhood' , 'soup wisdom');
 
 -- task 5
SELECT 
    c.name AS ' movie genre ',
    COUNT(fcat.category_id) AS 'total numbers of movies',
    s.total_sales AS 'total revenue'
FROM
    category c
        INNER JOIN
    film_category fcat ON c.category_id = fcat.category_id
        INNER JOIN
    sales_by_film_category s ON s.category = c.name
GROUP BY c.name
ORDER BY COUNT(fcat.category_id) DESC
LIMIT 10;
 
-- task 6
SELECT 
    co.country, f.title, COUNT(f.title)
FROM
    film f
        INNER JOIN
    inventory i ON f.film_id = i.film_id
        INNER JOIN
    customer c ON c.store_id = i.store_id
        INNER JOIN
    address a ON a.address_id = c.address_id
        INNER JOIN
    city ct ON ct.city_id = a.city_id
        INNER JOIN
    country co ON co.country_id = ct.country_id
WHERE
    co.country IN ('united arab emirates' , 'india', 'united states')
GROUP BY country;
 
 -- task 7
SELECT 
    id AS 'customers identification', name AS ' full name '
FROM
    customer_list
ORDER BY id;
 
 
 
 
 
 
 
 
 