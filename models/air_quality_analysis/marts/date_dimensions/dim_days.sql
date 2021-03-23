with
  days as (
    select distinct {{ get_day('date_local') }} day
    from {{ ref('pollutants_unioned') }}
  )

select
  {{ dbt_utils.surrogate_key(['day']) }} day_sk,
  day
from days
order by day
