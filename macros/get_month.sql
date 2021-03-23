{% macro get_month(date_local) %}
  extract(
    MONTH from {{ date_local }}
  )
{% endmacro %}
