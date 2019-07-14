SELECT Product_name AS Product, company_name AS Company FROM Products
INNER JOIN suppliers
ON Products.supplier_id = suppliers.supplier_id
ORDER BY Product ASC, Company ASC;