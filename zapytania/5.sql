select distinct customer.id,first_name,last_name,city from product_category
inner join product
on product_category.id = product.category_id
inner join offer 
on offer.product_id = product.id
inner join offer_customer
on offer_customer.offer_id = offer.id
inner join sale
on sale.id = offer_customer.id
inner join customer
on customer.id = offer_customer.customer_id
inner join address
on address.id = customer.invoice_address_id
where city like 'Kraków' and product_category.value like 'hardware';
 
