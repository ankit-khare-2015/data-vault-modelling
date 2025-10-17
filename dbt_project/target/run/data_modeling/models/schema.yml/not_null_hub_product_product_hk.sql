select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select product_hk
from "analytics"."public"."hub_product"
where product_hk is null



      
    ) dbt_internal_test