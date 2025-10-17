select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    store_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_store"
where store_hk is not null
group by store_hk
having count(*) > 1



      
    ) dbt_internal_test