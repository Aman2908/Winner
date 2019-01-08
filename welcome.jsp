<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
String user=session.getValue("userid").toString();
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/test"
                        + "?verifyServerCertificate=false" + "&useSSL=false"
                        + "&requireSSL=false";

java.sql.Connection con = DriverManager.getConnection(url,"root","root");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select *from users where user_id='"+user+"'");
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
        <%
            if(rs.next())
            {
        %>
        <br> <br>Welcome to Your Profile <%=user %><br><br>
        <%
                    out.println(rs.getString(3) +" "+rs.getString(4));
                    %>
                    <br><br><a href="index_mail.jsp">Compose Email</a><br><br><%
                    }
        %> 
        <br><br><br>
        <a href="Login.html">LogOut</a>
</body>
