SELECT customer.id FROM customer, sale
inner join offer_customer
on offer_customer.id = sale.id
inner join offer 
on offer.id = offer_customer.id
WHERE shipment_address_id != invoice_address_id AND quantity >=3 AND transaction_date = '2019%';
