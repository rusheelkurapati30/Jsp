<%@page import="java.sql.*"%>
<%
String Item_ID=request.getParameter("Item_ID");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://165.22.14.77/dbRusheel", "rusheel", "rusheel");
Statement st=con.createStatement();
String sql="update Item set Status='Inactive' where Item_ID='"+Item_ID+"'";
int i=st.executeUpdate(sql);
if(i == 1)
{
out.println("Record has been deleted successfully");
}
else
{
out.println("Invalid Item ID");
}
}
catch(Exception e){
System.out.print(e);
e.printStackTrace();
}
%>
