with
  pm25 as (
    select *
    from {{ ref('stg_pm25') }}
  ),
  pm10 as (
    select *
    from {{ ref('stg_pm10') }}
  )


select * from pm25
union all (
  select * from pm10
)
