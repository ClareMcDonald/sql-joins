-- find the film title of all inventory items that have never been rented
SELECT
    film.title
FROM
    inventory
-- LEFT JOIN FROM inventory to film and to rental
LEFT JOIN
    rental
ON
    inventory.inventory_id = rental.inventory_id
LEFT JOIN
    film
ON
    film.film_id = inventory.film_id
-- use WHERE IS NULL
WHERE
    rental.rental_date IS NULL;