{% macro test_distinct_entries(model, column_name, companion_column) %}

with
  distinct_a as (
    select distinct {{ column_name}}, {{ companion_column }}
    from {{ model }}
  ),
  a as (
    select count(*) count_a
    from distinct_a
  ),
  b as (
    select count(*) count_b
    from {{ model }}
  ),
  final as (
    select
      abs(
        (select count_a from a) -
        (select count_b from b)
      )
    as diff_count
  )

select diff_count from final


{% endmacro %}
