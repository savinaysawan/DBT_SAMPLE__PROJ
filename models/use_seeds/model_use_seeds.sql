{{config(
  materialized='table',
  alias='CUSTOMER_DETAILS_TBL'
)
}}

SELECT 
a.CUSTOMERID,
a.CUSTOMERNAME,
a.SEGMENT,
a.COUNTRY,
a.STATE,
b.Measure as measure_currancy
FROM 
{{ source('RAW_DATA','RAW_CUSTOMERS')}} a
cross join 
{{ ref("covid_data_2021")}} b -- This is seeds directly used using ref function 