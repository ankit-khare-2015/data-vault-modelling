

select
  
md5(concat(customer_id))
 as customer_hk,
  customer_id,
  current_timestamp as load_dts,
  'stg_customers' as record_src
from "analytics"."public"."stg_customers"