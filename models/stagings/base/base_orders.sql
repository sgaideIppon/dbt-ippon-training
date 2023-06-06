select
distinct *
from {{ mockable_source('source_dbt','orders','sample_orders') }}