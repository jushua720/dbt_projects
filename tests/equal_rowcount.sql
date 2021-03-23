with pm25 as (
  select count(*) pm25_total
  from {{ ref('stg_pm25') }}
  ),
  pm10 as (
    select count(*) pm10_total
    from {{ ref('stg_pm10') }}
  ),
  ap as (
    select count(*) ap_total
    from {{ ref('pollutants_unioned') }}
  )

select
  pm25.pm25_total,
  pm10.pm10_total,
  ap.ap_total
from pm25, pm10, ap
where (pm25.pm25_total + pm10.pm10_total) != ap.ap_total
