SELECT
CustomerId AS id,
FirstName AS nome,
Country AS pais 
FROM
customers
ORDER BY
pais ASC,
nome DESC
LIMIT 10;


--OFFSET 3;