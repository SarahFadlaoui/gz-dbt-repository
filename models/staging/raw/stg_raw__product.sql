with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        pdt_id,
        purchse_price

    from source

)
