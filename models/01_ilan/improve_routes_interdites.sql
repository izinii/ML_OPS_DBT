SELECT 
    SPLIT_PART(Routes_Interdites, '<->', 1) AS Origin_City,
    SPLIT_PART(Routes_Interdites, '<->', 2) AS Destination_City
FROM {{ source("dbt_intro", "Routes_interdites") }}
