with
  years as (
    select distinct
      {{ get_year('date_local') }} year
    from
      {{ ref('pollutants_unioned') }}
  )

select
  {{ dbt_utils.surrogate_key(['year']) }} year_sk,
  year
from years
