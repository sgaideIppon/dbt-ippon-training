select
distinct *
from {{ source('source_dbt','orders') }}