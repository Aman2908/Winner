<jsp:useBean id="mail" scope="session" class="jMail.Mail" />
<jsp:setProperty name="mail" property="to" param="to" />
<jsp:setProperty name="mail" property="from" value="YOUR_EMAIL_ID" />
<jsp:setProperty name="mail" property="smtpServ" value="smtp.gmail.com" />
<jsp:setProperty name="mail" property="subject" param="subject" />
<jsp:setProperty name="mail" property="message" param="message" />
<%
String to = mail.getTo();
int result;
result = mail.sendMail();
if(result == 0)
{
    out.println(" Mail Successfully Sent to "+to);
    %>
    <br><br><a href="welcome.jsp">Tap To Visit DashBoard</a><br><br><%
}
else
{
    out.println(" Mail NOT Sent to "+to);
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