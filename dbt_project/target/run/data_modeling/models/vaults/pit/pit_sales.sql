
  create view "analytics"."public"."pit_sales__dbt_tmp"
    
    
  as (
    

select
  hs.sale_id,
  hc.customer_id,
  hp.product_id,
  hst.store_id,
  sat.quantity,
  sat.total_amount,
  sat.status,
  sp.product_name,
  sp.category,
  sp.price
from "analytics"."public"."hub_sale" hs
join "analytics"."public"."link_sale_customer" lsc on hs.sale_hk = lsc.sale_hk
join "analytics"."public"."hub_customer" hc on lsc.customer_hk = hc.customer_hk
join "analytics"."public"."link_sale_product" lsp on hs.sale_hk = lsp.sale_hk
join "analytics"."public"."hub_product" hp on lsp.product_hk = hp.product_hk
join "analytics"."public"."link_sale_store" lss on hs.sale_hk = lss.sale_hk
join "analytics"."public"."hub_store" hst on lss.store_hk = hst.store_hk
left join "analytics"."public"."sat_sale_transaction" sat on hs.sale_hk = sat.sale_hk
left join "analytics"."public"."sat_product_details" sp on hp.product_hk = sp.product_hk
  );