## Tasks
1. Get all customers and their addresses.
-- SELECT * FROM customers c
-- JOIN addresses a ON c.id = a.customer_id;
2. Get all orders and their line items (orders, quantity and product).
--SELECT * FROM orders o
--JOIN line_items li ON o.id = li.order_id;
3. Which warehouses have cheetos?
-- SELECT p.description, w.warehouse FROM warehouse w
-- JOIN warehouse_product wp ON w.id = wp.warehouse_id
-- JOIN products p ON p.id = wp.product_id
-- WHERE p.description = 'cheetos';
4. Which warehouses have diet pepsi?
-- SELECT p.description, w.warehouse FROM warehouse w
-- JOIN warehouse_product wp ON w.id = wp.warehouse_id
-- JOIN products p ON p.id = wp.product_id
-- WHERE p.description = 'diet pepsi';
5. Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
-- SELECT COUNT(*), c.first_name, c.last_name FROM customers c
-- JOIN addresses a ON c.id = a.customer_id
-- JOIN orders o ON a.id= o.address_id
-- GROUP BY c.first_name, c.last_name
-- ORDER BY count DESC;
6. How many customers do we have?
-- SELECT COUNT(*) FROM customers;
7. How many products do we carry?
-- SELECT COUNT(*) FROM products;
8. What is the total available on-hand quantity of diet pepsi?
-- SELECT COUNT(*), p.description FROM warehouse_product wp
-- JOIN products p ON wp.product_id = p.id
-- WHERE p.description = 'diet pepsi'
-- GROUP BY p.description;
