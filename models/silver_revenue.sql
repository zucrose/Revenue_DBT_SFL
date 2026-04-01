{{config(
    materialized='table'
)}}
select *,current_timestamp() as ingestion_time from {{ ref('bronze_revenue')}}