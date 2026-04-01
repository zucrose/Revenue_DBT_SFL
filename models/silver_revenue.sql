{{config(
    materialized='table'
)}}
select * from {{ ref('bronze_revenue')}}