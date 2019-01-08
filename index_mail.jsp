
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Java Mail </title>
    </head>
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
        border-style: hidden;
        outline: none;
        }
        form {
        display: inline-block;
        }
        </style>
        <form action="sendMail.jsp" method="POST">
            <table border="0" align="center" cellpadding="20" cellspacing="10">
                <tbody>
                    <tr> <td colspan="3" align="center">
                            <b><font face="Arial Black" size="20"> Send Mail</font> </b> </td> </tr>
                    <tr>
                        <td><font face="Arial Black" size="10"> To</font> </td> <td> : </td>
                        <td> <input type="text" name="to" value="" /> </td>
                    </tr>
                    <tr>
                        <td><font face="Arial Black" size="10"> Subject </font></td> <td> : </td>
                        <td> <input type="text" name="subject" value="" /> </td>
                    </tr>
                    <tr>
                        <td> <font face="Arial Black" size="10">Message </font></td> <td> : </td>
                        <td> <textarea name="message" rows="8" cols="30">
                        </textarea></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center"><br>
                        <input type="submit" value="Send Mail" />
                        <br><br><br>
                        <input type="reset" value="Reset" />
                        <td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>