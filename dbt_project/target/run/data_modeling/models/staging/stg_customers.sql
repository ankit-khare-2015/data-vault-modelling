
  
    

  create  table "analytics"."public"."stg_customers__dbt_tmp"
  
  
    as
  
  (
    select
  customer_id,
  customer_name,
  city,
  country
from "analytics"."public"."customers"
  );
  