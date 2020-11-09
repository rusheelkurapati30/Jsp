<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
<table border="1">
<tr>
<td>Item ID</td>
<td>Item Description</td>
<td>Unit Price</td>
<td>Stock Quantity</td>
<td>Supplier ID</td>
</tr>
<%
try
{
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

connection = DriverManager.getConnection("jdbc:mysql://165.22.14.77/dbRusheel", "rusheel", "rusheel");
Class.forName("com.mysql.jdbc.Driver").newInstance();
statement=connection.createStatement();
String sql="select * from Item where Status='Active'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("Item_ID")%></td>
<td><%=resultSet.getString("Item_Description")%></td>
<td><%=resultSet.getString("Unit_Price")%></td>
<td><%=resultSet.getString("Stock_Quantity")%></td>
<td><%=resultSet.getString("Supplier_ID")%></td>

</tr>
<%
}
connection.close();
}
catch (Exception e)
{
e.printStackTrace();
}
%>
</table>
</body
</html>
