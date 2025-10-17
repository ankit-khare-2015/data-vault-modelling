{{ config(materialized='incremental', unique_key='sale_hk||product_hk') }}

select
  {{ generate_hk(["s.sale_id","s.product_id"]) }} as link_hk,
  hs.sale_hk,
  hp.product_hk,
  current_timestamp as load_dts,
  'stg_sales' as record_src
from {{ ref('hub_sale') }} hs
join {{ ref('stg_sales') }} s on hs.sale_id = s.sale_id
join {{ ref('hub_product') }} hp on s.product_id = hp.product_id
