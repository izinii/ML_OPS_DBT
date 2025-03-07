SELECT 
    u.Primary_Product_Code,
    u.Distance,
    u.Origin_City,
    u.Destination_City,
    (u.Distance * r.Valeur_FE) AS Conso
FROM {{ ref('union_all') }} u
LEFT JOIN {{ ref('ref_fe') }} r
ON u.Primary_Product_Code = r.KPI_FE