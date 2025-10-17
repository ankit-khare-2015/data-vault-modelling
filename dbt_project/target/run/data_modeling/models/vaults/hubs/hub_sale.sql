
      
  
    

  create  table "analytics"."public"."hub_sale"
  
  
    as
  
  (
    

select
  
md5(concat(sale_id))
 as sale_hk,
  sale_id,
  current_timestamp as load_dts,
  'stg_sales' as record_src
from "analytics"."public"."stg_sales"
  );
  
  