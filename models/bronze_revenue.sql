{{config(
    materialized='table'
)}}
select *,current_timestamp() as ingestion_time  from {{  source('SOURCE','revenue_data_raw') }}