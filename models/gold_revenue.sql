{{ config_dynamic_table(lag='12 hours')
}}
 select sale_date,sum(total_revenue) as Daily_Revenue,sum(QUANTITY_SOLD) as Daily_units_sold from 
{{ref('silver_revenue')}} group by sale_date order by 1 