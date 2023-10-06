select 
    "mql_id"
    ,"declared_monthly_revenue"::decimal(15,4)
from {{ source('in.c-data_import', 'olist_closed_deals_dataset') }}
having not("declared_monthly_revenue">=0)