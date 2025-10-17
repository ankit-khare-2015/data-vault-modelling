select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    product_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_product"
where product_hk is not null
group by product_hk
having count(*) > 1



      
    ) dbt_internal_test