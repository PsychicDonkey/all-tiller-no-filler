-- aggregate item qty by order-id in order lines table, to join to order table at correct granularity
SELECT
  order_line.id_order as id_order
  ,SUM(order_line.m_quantity) as m_quantity
FROM aqueous-tesla-423708-b1.tiller.order_line as order_line
GROUP BY id_order
