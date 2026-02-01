{% macro local_sales_macro(table) %}
select CAST(barcode_ean13 as INT) as barcode_ean13,
       CAST(site_key as INT) as site_key,




from {{source('dbt_carrefour', 'table')}}
{% endmacro %}








