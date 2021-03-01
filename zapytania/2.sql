select id from customer where id IN 
(
	SELECT  customer_id
	AS idOfCustomer from offer_customer inner join sale on offer_customer.id = sale.offer_customer_id
	GROUP BY customer_id
	having COUNT(offer_customer.id) = 
	(
		SELECT MIN(countOfferCustomerId)
		FROM 
		(
			SELECT COUNT(offer_customer.id) countOfferCustomerId, customer_id
			AS idOfCustomer from offer_customer inner join sale on offer_customer.id = sale.offer_customer_id
			GROUP BY customer_id
		) as minTrn
	)
)
ORDER by last_name
limit 1;
