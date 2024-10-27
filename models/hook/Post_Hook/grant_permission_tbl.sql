{{config(
  materialized='view',
  alias='ORDERS_HAVING_PROFIT_VW',
  post_hook=["GRANT SELECT ON {{ this }} TO SYSADMIN;"]
)
}}
SELECT * FROM {{ source('RAW_DATA','RAW_ORDERS')}}
WHERE ORDERSELLINGPRICE > ORDERCOSTPRICE