select AVG(offer_price) from offer
inner join offer_customer
on offer.id = offer_customer.offer_id
inner join sale
on offer_customer.id = sale.offer_customer_id
inner join customer
on customer.id = offer_customer.customer_id
inner join address
on address.id = customer.invoice_address_id
where city IN ('Kraków');
