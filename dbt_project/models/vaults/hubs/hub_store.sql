{{ config(materialized='incremental', unique_key='store_id') }}

select
  {{ generate_hk(["store_id"]) }} as store_hk,
  store_id,
  current_timestamp as load_dts,
  'stg_stores' as record_src
from {{ ref('stg_stores') }}
