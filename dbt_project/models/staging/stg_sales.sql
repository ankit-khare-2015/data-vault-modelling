select
  sale_id,
  customer_id,
  product_id,
  store_id,
  quantity,
  total_amount,
  status
from {{ ref('sales') }}
