select
  store_id,
  store_name,
  city,
  country
from {{ ref('stores') }}
