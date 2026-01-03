{% macro function1(x) %}
    CASE WHEN {{x}} in (12,1,2)
    THEN 'WINTER'
    WHEN {{x}} in (3,4,5)
    THEN 'SPRING'
    WHEN {{x}} in (6,7,8)
    THEN 'SUMMER'
    ELSE 'AUTUMN' 
    END
{% endmacro %}


{% macro function2(x) %}
    CASE 
    WHEN DAYNAME(TO_TIMESTAMP({{x}})) in ('Sat','Sun')
    THEN 'WEEKEND'
    ELSE 'BUSINESSDAY'
    END
{% endmacro %}