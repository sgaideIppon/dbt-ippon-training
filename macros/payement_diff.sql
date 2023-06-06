{% macro get_pay_method()%}

{% set payment_methods_query %}
select distinct ord.payment_method from {{ ref('base_orders')}} as ord
order by 1
{% endset %}

{% set results = run_query(payment_methods_query) %}


{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}
{{return(results_list)}}
{% endmacro %}
