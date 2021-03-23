{% macro get_day(date_local) %}
  extract(
    DAY from {{ date_local }}
  )
{% endmacro %}
