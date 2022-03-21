-- find all rental dates for customers with the first_name Patricia
SELECT
    rental.rental_date
FROM    
    rental
-- use INNER JOIN FROM customer onto rental
INNER JOIN  
    customer
ON
    customer.customer_id = rental.customer_id
WHERE
    customer.first_name = 'Patricia';