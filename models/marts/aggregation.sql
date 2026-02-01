SELECT pdt_SUB_CATEGORY,
        SUM(CA) as local_CA
FROM{{ref('stg_local_sales')}}
GROUP BY pdt_SUB_CATEGORY
