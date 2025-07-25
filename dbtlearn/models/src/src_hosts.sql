WITH raw_hosts AS (
SELECT
    *
FROM
    --AIRBNB.RAW.RAW_HOSTS
    {{ source('airbnb', 'hosts') }}
)
SELECT
    id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at
FROM
raw_hosts