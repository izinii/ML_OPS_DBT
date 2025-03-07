SELECT 
    Route_Interdite AS Interdiction_Route,
    Primary_Product_Code AS Mode_Transport,
    SUM(Conso) AS Consommation_Totale,
    SUM(Distance) AS Distance_Totale,
    COUNT(*) AS Nombre_Voyages
FROM {{ ref('voyage_conso_et_flagRoutes') }}
GROUP BY Route_Interdite, Primary_Product_Code
ORDER BY Interdiction_Route DESC, Mode_Transport