select
    *
from {{ source("dbt_intro", "voyage_08_2022") }}
