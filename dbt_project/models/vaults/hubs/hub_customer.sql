{{ config(materialized='incremental', unique_key='customer_id') }}

select
  {{ generate_hk(["customer_id"]) }} as customer_hk,
  customer_id,
  current_timestamp as load_dts,
  'stg_customers' as record_src
from {{ ref('stg_customers') }}
