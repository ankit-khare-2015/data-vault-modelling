
    
    

select
    product_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_product"
where product_hk is not null
group by product_hk
having count(*) > 1


