{{ config(materialized='incremental', unique_key='product_id') }}

select
  {{ generate_hk(["product_id"]) }} as product_hk,
  product_id,
  current_timestamp as load_dts,
  'stg_products' as record_src
from {{ ref('stg_products') }}
