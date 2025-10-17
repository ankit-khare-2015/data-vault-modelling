
  
    

  create  table "analytics"."public"."stg_stores__dbt_tmp"
  
  
    as
  
  (
    select
  store_id,
  store_name,
  city,
  country
from "analytics"."public"."stores"
  );
  