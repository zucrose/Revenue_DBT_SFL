{% macro config_dynamic_table(lag='1 day', wh='transforming') %}
    {{ config(
        materialized='dynamic_table',
        target_lag=lag,
        snowflake_warehouse=wh,
        
    ) }}
{% endmacro %}