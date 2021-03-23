with
  months as (
    select distinct
      {{ get_month('date_local') }} month_num
    from
      {{ ref('pollutants_unioned') }}
    order by
      month_num
  )

select
  {{ dbt_utils.surrogate_key(['month_num']) }} month_sk,
  {{ name_month('month_num') }} month_name,
  month_num
from
  months
