<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.lang.*" %>
<%
    
String user=request.getParameter("userid");
session.putValue("userid",user);
String pwd=request.getParameter("pwd");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
%>
            <%
String url = "jdbc:mysql://localhost:3306/test"
                        + "?verifyServerCertificate=false" + "&useSSL=false"
                        + "&requireSSL=false";
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into users values ('"+user+"','"+pwd+"','"+fname+"','"+lname+"','"+email+"')");

%>
<body>
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
    <a href="Login.html">Tap to go to Login Page</a>
</body>