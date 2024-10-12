SELECT 
   order_line.id_order_line
  ,order_line.id_order
  ,order_line.date_opended
  ,order_line.date_created -- lines: date created
  ,order_line.m_quantity
  ,order_line.m_unit_price
  ,order_line.m_unit_price_exc_vat
  ,order_line.m_total_price_exc_vat
  ,order_line.m_total_price_inc_vat
  ,order_line.m_tax_percent
  ,order_line.m_discount_amount
  ,order_line.dim_type
  ,order_line.dim_category
  ,order_line.dim_name
  ,order_line.dim_status
  ,order_line.dim_feature_type
  ,order_line.dim_unit_measure
  ,order_line.dim_unit_measure_display
  --,order_line.dim_category_translated     -- join col for ML output
  --,order_line.dim_name_translated         -- join col for ML output
  ,order_data.id_store                    -- orders: store_id
  ,order_data.id_waiter                   -- orders: waiter #
  ,order_data.id_table                    -- orders: table
  ,order_data.dim_status as order_status
  ,ml_name.product as product_name
  ,ml_name.product_group as product_group
  ,ml_name.product_category as product_category
  ,ml_name.product_class as product_class
  ,EXTRACT(TIME FROM order_line.date_created) as line_order_time
  ,CASE 
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 1 THEN 'Sunday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 2 THEN 'Monday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 3 THEN 'Tuesday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 4 THEN 'Wednesday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 5 THEN 'Thursday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 6 THEN 'Friday'
    WHEN EXTRACT(DAYOFWEEK FROM order_line.date_created) = 7 THEN 'Saturday'
  END AS day_of_week
FROM aqueous-tesla-423708-b1.tiller.order_line as order_line
LEFT JOIN aqueous-tesla-423708-b1.tiller.order_data as order_data
  ON order_line.id_order = order_data.id_order
LEFT JOIN aqueous-tesla-423708-b1.tiller.ml_name_enriched_v2 as ml_name
  ON order_line.dim_name_translated = ml_name.product
