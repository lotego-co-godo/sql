select first_name, count(customer_id) from customer,offer_customer
where customer.id = offer_customer.customer_id
group by first_name
;
