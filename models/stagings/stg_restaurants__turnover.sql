select rest.adress,ord.restaurant_identifier, sum(ord.amount) as amount,rest.name

from {{ ref("base_orders") }} as ord

left JOIN {{ ref("base_restaurants") }} as rest ON ord.RESTAURANT_IDENTIFIER = rest.IDENTIFIER 
group by ord.restaurant_identifier,rest.name,rest.address
 
order by amount DESC