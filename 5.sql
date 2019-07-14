SELECT suppliers.company_name AS Company, products.product_name AS Product, products.unit_price AS Price FROM products
	JOIN suppliers ON suppliers.supplier_id = products.supplier_id
	JOIN (SELECT products.supplier_id, MAX(products.unit_price) as MaxUnit FROM products 
		GROUP BY products.supplier_id) AS Temp ON products.supplier_id = Temp.supplier_id AND products.unit_price = Temp.MaxUnit
	ORDER BY Price DESC;