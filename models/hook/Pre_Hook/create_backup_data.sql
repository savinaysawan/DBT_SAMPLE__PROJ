{{ config(
    pre_hook=[" INSERT INTO TRANSFORMATION_DB.RAW_SCH.RAW_CUSTOMERS_BACKUP_TBL
    SELECT *,current_timestamp() FROM {{this}};"],
    materialized='table',
    alias='RAW_CUSTOMERS_TEXAS_DATA_TBL'
) }}

SELECT * FROM {{ source("RAW_DATA", "RAW_CUSTOMERS") }}
WHERE STATE='Texas'
