with
  ap as (
    select *
    from {{ ref('pollutants_unioned') }}
  )

select distinct
  {{ dbt_utils.surrogate_key(['parameter_name', 'units_of_measure']) }} pollutant_sk,
  units_of_measure,
  parameter_name
from
  ap
