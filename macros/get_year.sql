{% macro get_year(date_local) %}
  extract(
    YEAR from {{ date_local }}
  )
{% endmacro %}
