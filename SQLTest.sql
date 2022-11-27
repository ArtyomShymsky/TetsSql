/****** Script for SelectTopNRows command from SSMS 
ProductsTable - product table
where:
Id - product id
Name - product name
CategoryId - category id for this product

CategoriesTable - category table
where:
Id - category id
Name - category name
CategoryId - product id of this category
******/



SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable left  join CategoriesTable on ProductsTable.CategoryId = CategoriesTable.Id

  union 
  SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable inner join CategoriesTable on  CategoriesTable.ProductId = ProductsTable.Id
