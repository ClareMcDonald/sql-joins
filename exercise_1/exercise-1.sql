-- find all address_id of addresses in the city of Dundee
SELECT
    address.address_id
FROM
    address
-- use INNER JOIN FROM address on to city
INNER JOIN  
    city
ON
    city.city_id = address.city_id
WHERE
    city.city = 'Dundee';