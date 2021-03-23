with
  pollutants as (
    select *
    from {{ ref('pollutants_unioned') }}
  ),
  states as (
    select
      state_sk,
      state_name
    from
      {{ ref('dim_states') }}
  ),
  cities as (
    select distinct
      city_name,
      state_name
    from pollutants
  )

select
  {{ dbt_utils.surrogate_key(['cities.city_name', 'states.state_sk']) }} city_sk,
  states.state_sk,
  cities.city_name
from
  cities
  inner join states
    on cities.state_name = states.state_name
