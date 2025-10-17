
      
  
    

  create  table "analytics"."public"."sat_sale_transaction"
  
  
    as
  
  (
    

select
  hs.sale_hk,
  current_timestamp as load_dts,
  
md5(concat(quantity,'|',total_amount,'|',status))
 as hashdiff,
  s.quantity,
  s.total_amount,
  s.status
from "analytics"."public"."hub_sale" hs
join "analytics"."public"."stg_sales" s on hs.sale_id = s.sale_id
  );
  
  