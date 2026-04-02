{%  macro auditlog(status='start',name='Default') %}
{% if status =='start' %}
insert into revenue_fact_dev.audit_log values (revenue_fact_dev.audit_seq_no.nextval,'{{name}}','{{status}}',current_timestamp(),NULL)
{% endif %}
{% if status=='Completed' %}
update revenue_fact_dev.audit_log  set status='{{status}}' ,load_end=current_timestamp() where
 model_name='{{name}}' and load_end is null
{% endif %}

{% endmacro %}