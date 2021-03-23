with
  pm25 as (
    select
      state_code,
      state_name,
      city_name,
      parameter_name,
      aqi,
      units_of_measure,
      date_local,
      {{ air_quality('aqi') }} as air_quality
    from
      {{ source('openaq', 'pm25_frm_daily_summary') }}
    where
      state_name in unnest({{ var('states') }})
      and sample_duration = '{{ var("sample_duration") }}'
      and poc = {{ var('poc') }}
  )

select *
from pm25
{% if target.name == 'dev' %}
  where
    {{ get_year('date_local') }} = {{ var("year") }}
{% endif %}
