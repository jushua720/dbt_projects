with pollutants as (
  select *
  from {{ ref('pollutants_unioned') }}
)

select distinct
  {{ dbt_utils.surrogate_key(['state_code', 'state_name']) }} state_sk,
  state_code,
  state_name
from
  pollutants
