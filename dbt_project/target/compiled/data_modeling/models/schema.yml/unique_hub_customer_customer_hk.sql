
    
    

select
    customer_hk as unique_field,
    count(*) as n_records

from "analytics"."public"."hub_customer"
where customer_hk is not null
group by customer_hk
having count(*) > 1


