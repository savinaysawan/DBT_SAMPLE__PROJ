{{config(
  materialized='table',
  alias='CUSTOMER_CONSUMER_SEGMENT_TBL',
  pre_hook ="{{ insert_model_status_tbl(this,'started') }}"
)
}}
SELECT * FROM {{ source('RAW_DATA','RAW_CUSTOMERS')}}
WHERE SEGMENT ='Consumer'
