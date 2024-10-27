{{ config(
    pre_hook=["INSERT INTO TRANSFORMATION_DB.RAW_SCH.DBT_MODEL_STATUS 
    (model_name, model_start_time, model_status)
    VALUES ('DBT_RAW_CUSTOMER_VW', CURRENT_TIMESTAMP, 'started');"],
    database='TRANSFORMATION_DB',
    materialized='view',
    alias='DBT_RAW_CUSTOMER_VW'
) 
}}

SELECT * FROM {{ source("RAW_DATA", "RAW_CUSTOMERS") }}
