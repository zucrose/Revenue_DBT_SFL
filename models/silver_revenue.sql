{{config(
    materialized='incremental',
    pre_hook=auditlog('start',this.name),
    post_hook=auditlog('Completed',this.name)
)}}
select * from {{ ref('bronze_revenue')}} 
{%  if is_incremental() %}
where event_time>( select coalesce(max(event_time),'1900-01-01 00:00:00'::timestamp) from {{this}})

{% endif %}