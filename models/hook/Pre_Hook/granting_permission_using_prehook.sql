{{config(
  pre_hook=["GRANT SELECT ON {{ this }} TO SYSADMIN;"],
  materialized='incremental',
  alias='OFFICE_PRODUCT_DETAILS_TBL'
  
)
}}
SELECT * FROM {{ source('RAW_DATA','RAW_PRODUCTS')}}
WHERE CATEGORY='Office'