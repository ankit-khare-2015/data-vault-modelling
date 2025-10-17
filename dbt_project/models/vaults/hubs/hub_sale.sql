{{ config(materialized='incremental', unique_key='sale_id') }}

select
  {{ generate_hk(["sale_id"]) }} as sale_hk,
  sale_id,
  current_timestamp as load_dts,
  'stg_sales' as record_src
from {{ ref('stg_sales') }}
