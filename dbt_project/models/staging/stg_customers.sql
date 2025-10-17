select
  customer_id,
  customer_name,
  city,
  country
from {{ ref('customers') }}
