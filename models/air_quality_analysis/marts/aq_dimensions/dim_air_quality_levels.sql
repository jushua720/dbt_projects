with
  ap as (
    select distinct air_quality
    from {{ ref('pollutants_unioned') }}
  )

select
  {{ dbt_utils.surrogate_key(['air_quality']) }} aq_sk,
  air_quality
from
  ap
