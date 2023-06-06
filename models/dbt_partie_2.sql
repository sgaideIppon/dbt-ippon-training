select *
    from {{ref('restaurants') }}
where ouvert_dimanche = true
