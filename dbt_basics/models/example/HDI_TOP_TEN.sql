
-- Use the `ref` function to select from other models

select *
from {{ ref('HDI_RANK_NOT_NULL') }}
where HDI_RANK_2021 <= 10
