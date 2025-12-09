with

source as (

    select * from {{ source('jaffle', 'customers') }}

),

renamed as ( --test1

    select

        ----------  ids
        id as customer_id,

        ---------- text
        name as customer_name

    from source

)

select * from renamed
