
      
  
    

  create  table "analytics"."public"."sat_product_details"
  
  
    as
  
  (
    

select
  hp.product_hk,
  current_timestamp as load_dts,
  
md5(concat(product_name,'|',category,'|',price))
 as hashdiff,
  p.product_name,
  p.category,
  p.price
from "analytics"."public"."hub_product" hp
join "analytics"."public"."stg_products" p on hp.product_id = p.product_id
  );
  
  