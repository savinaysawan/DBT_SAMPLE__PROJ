{{config(
  materialized='table',
  alias='ORDERS_HAVING_PROFIT_TBL_02',
  post_hook ="{{ add_audit_column('ORDERS_HAVING_PROFIT_TBL_02') }}"
)
}}


SELECT * FROM {{ source('RAW_DATA','RAW_ORDERS')}}
WHERE ORDERSELLINGPRICE > ORDERCOSTPRICE