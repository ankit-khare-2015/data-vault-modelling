select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select store_hk
from "analytics"."public"."hub_store"
where store_hk is null



      
    ) dbt_internal_test