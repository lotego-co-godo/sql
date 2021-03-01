select AVG(offer_price) from offer
inner join offer_customer
on offer.id = offer_customer.offer_id
inner join sale
on offer_customer.id = sale.offer_customer_id; 

