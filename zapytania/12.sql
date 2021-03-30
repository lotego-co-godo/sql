SELECT TOP(1) product_id
FROM offer
GROUP BY product_id
ORDER BY SUM(quantity) DESC;
