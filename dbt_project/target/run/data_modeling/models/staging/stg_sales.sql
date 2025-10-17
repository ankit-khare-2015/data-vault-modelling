
  
    

  create  table "analytics"."public"."stg_sales__dbt_tmp"
  
  
    as
  
  (
    select
  sale_id,
  customer_id,
  product_id,
  store_id,
  quantity,
  total_amount,
  status
from "analytics"."public"."sales"
  );
  