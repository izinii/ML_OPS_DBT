select KPI_FE, Valeur_FE from 
{{ source("dbt_intro", "REF_FE_Voyage") }}