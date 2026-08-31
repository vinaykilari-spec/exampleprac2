select 
       customer_id,
       trim(customer_name)as
customer_name,
        LOWER(email) as EMAIL,
        INITCAP(city) as city,
        created_date

from {{ source('raw','CUSTOMERS') }}
