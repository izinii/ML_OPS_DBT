SELECT 
    CASE 
        WHEN Primary_Product_Code = 'Air' THEN 'Avion'
        WHEN Primary_Product_Code = 'Rail' THEN 'Train'
        ELSE Primary_Product_Code
    END AS Primary_Product_Code,
    "O&D_Mileage" AS Distance,
    Origin_City, 
    Destination_City
FROM {{ source("dbt_intro", "voyage_08_2022") }}
UNION ALL
SELECT 
    CASE 
        WHEN Primary_Product_Code = 'Air' THEN 'Avion'
        WHEN Primary_Product_Code = 'Rail' THEN 'Train'
        ELSE Primary_Product_Code
    END AS Primary_Product_Code,
    "O&D_Mileage" AS Distance,
    Origin_City, 
    Destination_City
FROM {{ source("dbt_intro", "voyage_09_2022") }}
