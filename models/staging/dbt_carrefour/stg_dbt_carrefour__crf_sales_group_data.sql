with 

source as (

    select * from {{ source('dbt_carrefour', 'crf_sales_group_data') }}

),

renamed as (

    select
        CAST(barcode_ean13 as INT) AS barcode_ean13,
        site_key,
        product_category,
        pdt_sub_category,
        date,
        ca

    from source

)

select * from renamed