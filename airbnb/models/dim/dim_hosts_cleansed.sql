WITH src_hosts AS (
    Select * From {{ ref('src_hosts') }}
)
SELECT 
    host_id,
    CASE WHEN host_name = '' THEN 'Anonymous' ELSE host_name END AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM src_hosts