<%@ page import ="java.sql.*" %>
<%@ page import ="java.util.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/test"
                        + "?verifyServerCertificate=false" + "&useSSL=false"
                        + "&requireSSL=false";
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Random r=new Random();
int otp=r.nextInt(100000)+100000;
String un=request.getParameter("uname");
String p1=request.getParameter("pass");
String p2=request.getParameter("rpass");
if(p1.equals(p2))
{
    PreparedStatement ps=con.prepareStatement("update users set password='"+p1+"' where user_id='"+un+"'");
    int i=ps.executeUpdate();
    %><br><br> Password Updated Successfully <br><br>
    <a href="Login.html">Login Again</a><%
}   
        %>
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
