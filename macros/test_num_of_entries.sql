{% macro test_num_of_entries(model, row_count) %}

with
  meet_condition as (
    select count(*) row_count
    from {{ model }}
  ),
  validation_errors as (
    select row_count
    from meet_condition
    where
      row_count != {{ row_count }}
    )

select
  count(*)
from
  validation_errors

{% endmacro %}
