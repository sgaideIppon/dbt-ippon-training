select
*
from {{ mockable_source('source_dbt','restaurants','sample_restaurants') }}