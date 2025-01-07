{{config(
  materialized='table'
)
}}

SELECT * ,
'raw_customers_tbl' as snf_created_by ,
current_timestamp as snf_created_date,
'raw_customers_tbl' as snf_updated_by ,
current_timestamp as snf_updated_date
 FROM {{ source('RAW_DATA','RAW_CUSTOMERS')}}