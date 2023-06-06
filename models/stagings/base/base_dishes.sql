select
*
from {{ source('source_dbt','dishes') }}