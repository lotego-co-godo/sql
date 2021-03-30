select count(shipment_address_id) from customer group by shipment_address_id having count (shipment_address_id) >1 ;
