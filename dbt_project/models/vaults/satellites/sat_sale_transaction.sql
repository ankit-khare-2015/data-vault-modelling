{{ config(materialized='incremental', unique_key='sale_hk||load_dts') }}

select
  hs.sale_hk,
  current_timestamp as load_dts,
  {{ generate_hashdiff(["quantity","total_amount","status"]) }} as hashdiff,
  s.quantity,
  s.total_amount,
  s.status
from {{ ref('hub_sale') }} hs
join {{ ref('stg_sales') }} s on hs.sale_id = s.sale_id
