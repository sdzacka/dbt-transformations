{{ config(materialized='table') }}

with source_data as (

    select order_id,
           amount,
           current_timestamp() as load_time
    from {{ ref('stg_sales') }}

)

select *
from source_data