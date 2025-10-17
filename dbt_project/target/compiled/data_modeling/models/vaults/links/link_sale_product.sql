

select
  
md5(concat(s.sale_id,'|',s.product_id))
 as link_hk,
  hs.sale_hk,
  hp.product_hk,
  current_timestamp as load_dts,
  'stg_sales' as record_src
from "analytics"."public"."hub_sale" hs
join "analytics"."public"."stg_sales" s on hs.sale_id = s.sale_id
join "analytics"."public"."hub_product" hp on s.product_id = hp.product_id