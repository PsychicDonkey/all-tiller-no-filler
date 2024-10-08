-- granularity: orders, (per day per store)
-- metrics: total revenue, total customers ...
SELECT
  order_line.id_order as order_id
  ,DATE(order_line.date_created) AS order_date
  ,SUM(order_line.m_total_price_inc_vat) as total_rev
  ,SUM(order_data.m_nb_customer)/COUNT(order_line.id_order) as nb_of_customers 
  ,COUNT(order_line.id_order) as total_order_lines
  ,SUM(order_line.m_total_price_inc_vat)/(SUM(order_data.m_nb_customer)/COUNT(order_line.id_order)) as av_rev_per_customer
  ,order_data.id_store
  ,SUM(order_line_quantity.m_quantity)/COUNT(order_line.id_order) as item_quantity
  ,(SUM(order_line_quantity.m_quantity)/COUNT(order_line.id_order))/(SUM(order_data.m_nb_customer)/COUNT(order_line.id_order)) as items_per_customer
FROM aqueous-tesla-423708-b1.tiller.order_line as order_line
LEFT JOIN aqueous-tesla-423708-b1.tiller.order_data as order_data
  ON order_line.id_order = order_data.id_order
LEFT JOIN `aqueous-tesla-423708-b1.tiller.final-order-line-quantity` as order_line_quantity
  ON order_line_quantity.id_order = order_data.id_order
GROUP BY 
  order_id -- orders
  ,order_date -- per day
  ,order_data.id_store -- per store
ORDER BY order_line.id_order DESC
