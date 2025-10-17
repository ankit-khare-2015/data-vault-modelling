{{ config(materialized='incremental', unique_key='product_hk||load_dts') }}

select
  hp.product_hk,
  current_timestamp as load_dts,
  {{ generate_hashdiff(["product_name","category","price"]) }} as hashdiff,
  p.product_name,
  p.category,
  p.price
from {{ ref('hub_product') }} hp
join {{ ref('stg_products') }} p on hp.product_id = p.product_id
