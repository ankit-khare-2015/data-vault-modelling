select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sale_hk
from "analytics"."public"."hub_sale"
where sale_hk is null



      
    ) dbt_internal_test