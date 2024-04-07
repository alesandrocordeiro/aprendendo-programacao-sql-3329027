SELECT
cus.CustomerId AS id_cliente,
cus.FirstName AS nome,
SUM (inv.Total) AS total_gasto,
COUNT (inv.Total) AS qnt_compras
FROM
invoices AS inv
INNER JOIN customers as cus ON inv.CustomerId = cus.CustomerId
GROUP BY id_cliente
HAVING SUM (inv.Total) >=10 and
COUNT (inv.Total) >=6;
