SELECT 
  NON EMPTY 
  {
    [Measures].[Unit Price - Order Details]
  } ON COLUMNS,
  NON EMPTY 
  {
    (
      [Customers].[Customer Name].[Customer Name].ALLMEMBERS 
      * [Customers].[Customer Country].[Customer Country].ALLMEMBERS 
      * [Employees].[Employee Last Name].[Employee Last Name].ALLMEMBERS 
      * [Suppliers].[Suppliers Country].[Suppliers Country].ALLMEMBERS 
      * [Products].[Product Name].[Product Name].ALLMEMBERS 
      * [Categories].[Product Category Name].[Product Category Name].ALLMEMBERS 
      * [Orders].[Order Date].[Order Date].ALLMEMBERS 
      * [Products].[Product- Category].[Product- Category].ALLMEMBERS
    ) 
  } 
  DIMENSION PROPERTIES MEMBER_CAPTION, MEMBER_UNIQUE_NAME ON ROWS 
FROM 
  [Northwind]
CELL PROPERTIES 
  VALUE, BACK_COLOR, FORE_COLOR, FORMATTED_VALUE, FORMAT_STRING, FONT_NAME, FONT_SIZE, FONT_FLAGS