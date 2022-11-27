/****** Script for SelectTopNRows command from SSMS 
ProductsTable - ������� ���������
� ���:
Id - ���� ��������
Name -  ��� ��������
CategoryId - ���� ��������� ������� ��������

CategoriesTable - ������� ���������
� ���:
Id - ���� ���������
Name -  ��� ���������
CategoryId - ���� �������� ������ ���������
******/



SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable left  join CategoriesTable on ProductsTable.CategoryId = CategoriesTable.Id

  union 
  SELECT ProductsTable.Name as 'ProductName',CategoriesTable.Name as 'CategoriesName'

  FROM ProductsTable inner join CategoriesTable on  CategoriesTable.ProductId = ProductsTable.Id