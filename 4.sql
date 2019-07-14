SELECT company_name AS Company, ARRAY_AGG(orders.order_id) FROM customers
	LEFT JOIN orders
	ON customers.customer_id = orders.customer_id
	GROUP BY customers.company_name
	ORDER BY Company ASC;