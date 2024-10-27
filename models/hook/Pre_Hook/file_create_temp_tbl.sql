{{ config(
    pre_hook=["CREATE TEMPORARY TABLE TEMP_TEXAS_CUSTOMERS AS 
    SELECT * FROM {{ source('RAW_DATA', 'RAW_CUSTOMERS') }} WHERE STATE = 'Texas';"],
    materialized='table',
    alias='TEXAS_CUSTOMERS_TBL'
) }}

SELECT * FROM TEMP_TEXAS_CUSTOMERS
