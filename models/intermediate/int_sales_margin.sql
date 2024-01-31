select * from {{ref('stg_raw__sales')}}
JOIN
{{ref("stg_raw__product")}}
USING (pdt_id)