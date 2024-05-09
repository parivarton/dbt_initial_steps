{{ config(materialized='table') }}

with source_data as (

    select * from
    {{source('HDI_SOURCES','HDI_DATA')}}
    where HDI_RANK_2021 IS NOT NULL

)

select *
from source_data

