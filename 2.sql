SELECT company_name AS Company, COUNT(product_name) AS NumberOfProducts FROM products
	JOIN suppliers
	ON products.supplier_id = suppliers.supplier_id
	GROUP BY suppliers.company_name
	ORDER BY NumberOfProducts DESC, Company ASC;
