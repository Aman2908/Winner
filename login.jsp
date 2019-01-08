<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String userid=request.getParameter("user");
session.putValue("userid",userid);
String pwd=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/test"
                        + "?verifyServerCertificate=false" + "&useSSL=false"
                        + "&requireSSL=false";

java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select *from users where user_id='"+userid+"'");
%>
<br><br> 
<%
if(rs.next())
{
if(rs.getString(2).equals(pwd))
{
out.println("Welcome "+userid);
%>
 <br><br>
    <a href="welcome.jsp">See Your Profile</a>
<%
}
else
{
out.println("Invalid password try again");
}
} 
%>

<body>
    <br><br>
    <a href="forgot.html">Reset PassWord</a>
    <style type="text/css">
        body {
        text-align: center;
        background-image: url("css_1.jpg");
        background-color: #cccccc;
        text-shadow:4px 4px 8px orange;
        font-size: 20pt; 
        font-family: Arial Black; 
        color: whitesmoke;
        font-weight: bold;
        }
        </style>
</body>