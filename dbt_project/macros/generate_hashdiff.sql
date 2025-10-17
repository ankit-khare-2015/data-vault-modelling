{% macro generate_hashdiff(columns) %}
md5(concat({{ columns | join(",'|',") }}))
{% endmacro %}
