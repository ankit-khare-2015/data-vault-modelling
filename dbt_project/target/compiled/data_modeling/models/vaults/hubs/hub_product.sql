

select
  
md5(concat(product_id))
 as product_hk,
  product_id,
  current_timestamp as load_dts,
  'stg_products' as record_src
from "analytics"."public"."stg_products"