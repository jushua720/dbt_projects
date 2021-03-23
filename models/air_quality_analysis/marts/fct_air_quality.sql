with ap as (
  select *
  from {{ ref('pollutants_unioned') }}
  ),
  aq as (
    select *
    from {{ ref('dim_air_quality_levels') }}
  ),
  days as (
    select *
    from {{ ref('dim_days') }}
  ),
  months as (
    select *
    from {{ ref('dim_months') }}
  ),
  years as (
    select *
    from {{ ref('dim_years') }}
  ),
  ap_types as (
    select *
    from {{ ref('dim_pollutants') }}
  ),
  states as (
    select *
    from {{ ref('dim_states') }}
  ),
  cities as (
    select city_name, city_sk, cty.state_sk, states.state_sk, states.state_name
    from {{ ref('dim_cities') }} cty, states
    where states.state_sk = cty.state_sk
  )

select
  ap.aqi,
  years.year_sk,
  months.month_sk,
  days.day_sk,
  ap_types.pollutant_sk,
  cities.city_sk,
  aq.aq_sk
from ap
  join years on {{ get_year('ap.date_local') }} = years.year
  join months on {{ get_month('ap.date_local') }} = months.month_num
  join days on   {{ get_day('ap.date_local') }} = days.day
  join ap_types on  ap.parameter_name = ap_types.parameter_name
  join cities on ap.city_name = cities.city_name
  join aq on ap.air_quality = aq.air_quality
