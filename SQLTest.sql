/****** Script for SelectTopNRows command from SSMS 
ProductsTable - таблица продуктов
в ней:
Id - айди продукта
Name -  имя продукта
CategoryId - айди категории данного продукта

CategoriesTable - таблица категорий
в ней:
Id - айди категории
Name -  имя категории
CategoryId - айди продукта данной категории
******/



SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable left  join CategoriesTable on ProductsTable.CategoryId = CategoriesTable.Id

  union 
  SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable inner join CategoriesTable on  CategoriesTable.ProductId = ProductsTable.Id