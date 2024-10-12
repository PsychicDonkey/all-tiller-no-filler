-- frequency, waiter
SELECT
id_waiter
,max(id_store) as id_store
,count(id_waiter) as count
FROM `aqueous-tesla-423708-b1.tiller.order_data`
GROUP BY id_waiter

-- frequency, table (382)
SELECT
id_table
,max(id_store) as id_store3
,count(id_table) as count
FROM `aqueous-tesla-423708-b1.tiller.order_data`
GROUP BY id_table, id_store

-- check on one order
SELECT id_order 
  ,m_cached_payed-m_cached_price
FROM `aqueous-tesla-423708-b1.tiller.order_data` 
WHERE id_order = 38353338

--

--check all with condition
SELECT * 
FROM `aqueous-tesla-423708-b1.tiller.order_data` 
WHERE m_cached_payed-m_cached_price <> 0

-- EDA on ORDER LINE

-- check # of rows on specific order
SELECT
*
FROM aqueous-tesla-423708-b1.tiller.order_line as order_line

WHERE order_line.id_order =15967970;

-- check sum revenue on specific order
SELECT
SUM(m_total_price_inc_vat)
FROM aqueous-tesla-423708-b1.tiller.order_line as order_line

WHERE order_line.id_order =15967970;
