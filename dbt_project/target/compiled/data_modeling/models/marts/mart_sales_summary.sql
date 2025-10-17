

select
  category,
  sum(total_amount) as total_revenue,
  count(*) as total_sales,
  sum(case when status='Returned' then 1 else 0 end) as returns
from "analytics"."public"."pit_sales"
group by category