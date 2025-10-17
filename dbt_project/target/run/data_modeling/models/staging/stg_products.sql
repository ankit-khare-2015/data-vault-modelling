
  
    

  create  table "analytics"."public"."stg_products__dbt_tmp"
  
  
    as
  
  (
    select
  product_id,
  product_name,
  category,
  price
from "analytics"."public"."products"
  );
  