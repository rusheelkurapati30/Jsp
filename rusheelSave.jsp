<%@page import="java.sql.*"%>
<%
String Item_ID=request.getParameter("Item_ID");
String Item_Description=request.getParameter("Item_Description");
String Unit_Price=request.getParameter("Unit_Price");
String Stock_Quantity=request.getParameter("Stock_Quantity");
String Supplier_ID=request.getParameter("Supplier_ID");
String Status="Active";
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://165.22.14.77/dbRusheel", "rusheel", "rusheel");
Statement st=con.createStatement();
String sql="insert into Item(Status,Item_ID,Item_Description,Unit_Price,Stock_Quantity,Supplier_ID) values('"+Status+"','"+Item_ID+"','"+Item_Description+"','"+Unit_Price+"','"+Stock_Quantity+"', '"+Supplier_ID+"') ON DUPLICATE KEY UPDATE Item_Description='"+Item_Description+"', Unit_Price='"+Unit_Price+"', Stock_Quantity='"+Stock_Quantity+"', Supplier_ID='"+Supplier_ID+"'";
int i=st.executeUpdate(sql);
if(i >= 1)
{
out.println("Record has been Inserted/Updated Successfully");
}
}
catch(Exception e){
out.println(e);
e.printStackTrace();
}
%>
