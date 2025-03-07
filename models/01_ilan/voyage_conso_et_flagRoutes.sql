SELECT 
    c.*,
    CASE 
        WHEN c.Primary_Product_Code = 'Train' THEN 'N'  -- Si Train, toujours "N"
        WHEN ri.Origin_City IS NOT NULL THEN 'Y'
        ELSE 'N'
    END AS Route_Interdite
FROM {{ ref('voyage_et_conso') }} c
LEFT JOIN {{ ref('improve_routes_interdites') }} ri
ON (c.Origin_City = ri.Origin_City AND c.Destination_City = ri.Destination_City)
   OR (c.Origin_City = ri.Destination_City AND c.Destination_City = ri.Origin_City)