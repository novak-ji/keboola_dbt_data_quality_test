{{ config(
    materialized='table'
) }}

WITH test_city AS (
    SELECT
        NULL AS id,
        'Prague' AS city,
        1300000 AS population
    UNION ALL
    SELECT
        2 AS id,
        'Brno' AS city,
        380000 AS population
    UNION ALL
    SELECT
        3 AS id,
        'Ostrava' AS city,
        290000 AS population
)

SELECT * FROM test_city

{{ log("Current target is: " ~ target.name, info=True) }}