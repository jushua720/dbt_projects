{% macro air_quality(aqi) %}
  case
    when {{ aqi }} < 51 then "Good"
    when {{ aqi }} < 101 then "Moderate"
    when {{ aqi }} < 151 then "Unhealthy"
    when {{ aqi }} < 201 then "Poor"
    when {{ aqi }} < 301 then "Very poor"
    when {{ aqi }} < 501 then "Severe"
    else "Hazardous"
  end
{% endmacro %}
