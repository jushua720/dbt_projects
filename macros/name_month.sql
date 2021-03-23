{% macro name_month(m_num) %}
  case
    when {{ m_num }} = 1 then "Jan"
    when {{ m_num }} = 2 then "Feb"
    when {{ m_num }} = 3 then "Mar"
    when {{ m_num }} = 4 then "Apr"
    when {{ m_num }} = 5 then "May"
    when {{ m_num }} = 6 then "Jun"
    when {{ m_num }} = 7 then "Jul"
    when {{ m_num }} = 8 then "Aug"
    when {{ m_num }} = 9 then "Sep"
    when {{ m_num }} = 10 then "Oct"
    when {{ m_num }} = 11 then "Nov"
    else "Dec"
  end
{% endmacro %}
