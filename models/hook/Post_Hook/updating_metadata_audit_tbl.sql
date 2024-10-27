{{config(
  materialized='view',
  alias='ORDERS_HAVING_PROFIT_VW_02',
  pre_hook=["INSERT INTO TRANSFORMATION_DB.RAW_SCH.DBT_MODEL_STATUS 
    (model_name, model_start_time, model_status)
    VALUES ('ORDERS_HAVING_PROFIT_VW_02', CURRENT_TIMESTAMP, 'started');"],
  post_hook=["INSERT INTO TRANSFORMATION_DB.RAW_SCH.DBT_MODEL_STATUS 
    (model_name, model_start_time, model_status)
    VALUES ('ORDERS_HAVING_PROFIT_VW_02', CURRENT_TIMESTAMP, 'completed');"],  
)
}}
SELECT * FROM {{ source('RAW_DATA','RAW_ORDERS')}}
WHERE ORDERSELLINGPRICE > ORDERCOSTPRICE