{{config(
    materialized='table',
    pre_hook="{{auditlog('start',this.name)}}",
    post_hook="{{auditlog('Completed',this.name)}}"
)}}
select *,current_timestamp() as ingestion_time  from {{  source('SOURCE','revenue_data_raw') }}