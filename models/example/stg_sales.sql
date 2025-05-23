-- using 'ref' keyword to reforence other model files to create a join

SELECT
o.Order_Id,
c.Customer_Id,
c.Customer_name,
p.Product_Id,
p.Product_Name,
o.Quantity,
o.Order_date
FROM
dbt_bkalakkadu.Orders o
JOIN
dbt_bkalakkadu.Products p ON o.Product_ID = p.Product_Id
JOIN
{{ ref("stg_customers") }} c on o.Customer_ID = c.Customer_ID
