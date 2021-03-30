SELECT TOP(1) product_id, SUM(quantity) AS TotalQuantity
FROM offer
GROUP BY product_id
ORDER BY SUM(quantity) ASC;
