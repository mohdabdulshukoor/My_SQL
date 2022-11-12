use sakila;

-- task 1
SELECT 
    continent, name, population
FROM
    country
WHERE
    population IN (SELECT 
            continent
        FROM
            country
        WHERE
            population IN (SELECT 
                    MAX(population)
                FROM
                    country)
        GROUP BY continent);

-- task 2
SELECT 
    continent, name, population
FROM
    country cty1
WHERE
    population = (SELECT 
            MAX(population)
        FROM
            country cty2
        WHERE
            cty1.continent = cy2.continent);

-- task 3 
SELECT 
    name, continent, language
FROM
    country
        JOIN
    countrylanguage
WHERE
    language = 'french'
        AND continent = 'europe';

-- task 4
SELECT 
    name, continent, code
FROM
    country
WHERE
    code IN (SELECT 
            code
        FROM
            country
        WHERE
            code IN ('are' , 'gbr', 'usa'));
