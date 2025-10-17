
    
    

select
    sale_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_sale"
where sale_hk is not null
group by sale_hk
having count(*) > 1


