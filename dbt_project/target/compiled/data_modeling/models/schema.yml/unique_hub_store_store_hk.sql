
    
    

select
    store_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_store"
where store_hk is not null
group by store_hk
having count(*) > 1


