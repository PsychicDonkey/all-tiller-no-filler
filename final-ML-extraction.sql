-- list of categories for ML treatment

SELECT
dim_category_translated
FROM `aqueous-tesla-423708-b1.tiller.order_line`
GROUP BY dim_category_translated

-- list of names for ML treatment
SELECT
dim_name_translated
FROM `aqueous-tesla-423708-b1.tiller.order_line`
GROUP BY dim_name_translated
