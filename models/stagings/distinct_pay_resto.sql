{#{% set payment_methods = get_pay_method() %} #}

{% set payment_methods = dbt_utils.get_column_values(table=ref("base_orders"), column="payment_method") %}

select
ord.restaurant_identifier, rest.name, rest.address, 
{% for payment_method in payment_methods %}
sum(case when payment_method = '{{payment_method}}' then amount end) as {{payment_method}}_amount{%if not loop.last %},{%endif%}
{% endfor %}
from {{ ref('base_orders')}} as ord
left JOIN {{ ref("base_restaurants") }} as rest ON ord.restaurant_identifier = rest.identifier 

group by ord.restaurant_identifier, rest.name, rest.address