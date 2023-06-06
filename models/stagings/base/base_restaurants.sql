select
*
from {{ source('source_dbt','restaurants') }}