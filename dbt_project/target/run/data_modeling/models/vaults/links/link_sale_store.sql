
      
  
    

  create  table "analytics"."public"."link_sale_store"
  
  
    as
  
  (
    

select
  
md5(concat(s.sale_id,'|',s.store_id))
 as link_hk,
  hs.sale_hk,
  hst.store_hk,
  current_timestamp as load_dts,
  'stg_sales' as record_src
from "analytics"."public"."hub_sale" hs
join "analytics"."public"."stg_sales" s on hs.sale_id = s.sale_id
join "analytics"."public"."hub_store" hst on s.store_id = hst.store_id
  );
  
  