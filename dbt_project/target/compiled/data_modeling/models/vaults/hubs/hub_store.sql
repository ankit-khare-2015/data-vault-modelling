

select
  
md5(concat(store_id))
 as store_hk,
  store_id,
  current_timestamp as load_dts,
  'stg_stores' as record_src
from "analytics"."public"."stg_stores"