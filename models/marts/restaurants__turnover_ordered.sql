select 
*
from {{ ref("stg_restaurants__turnover") }}
order by amount DESC limit {{ var('nb_restaurants_to_show') }}

