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
