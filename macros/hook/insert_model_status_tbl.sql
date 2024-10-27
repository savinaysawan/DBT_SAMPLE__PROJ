{% macro insert_model_status_tbl(obj_name,model_status) %}

INSERT INTO TRANSFORMATION_DB.RAW_SCH.DBT_MODEL_STATUS 
(model_name, model_start_time, model_status)
VALUES ('{{ obj_name }}', CURRENT_TIMESTAMP, '{{ model_status }}');

{% endmacro %}
