{% macro generate_hk(columns) %}
md5(concat({{ columns | join(",'|',") }}))
{% endmacro %}
