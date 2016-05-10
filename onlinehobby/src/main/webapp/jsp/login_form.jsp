<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
    </head>
    <body>
        
        <jsp:useBean id="user" scope="request" class="ro.oho.rest.model.User"></jsp:useBean>

        <form action="LoginController" method="post">
            <center>
                <table border="2" width="15%" cellpadding="5">
                    <thead>
                        <tr>
                            <th colspan="2">Login Form</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>    
                            <td>Username : </td>
                            <td><input type="text" name="username" value="<jsp:getProperty name="user" property="username"/>"></td>
                        </tr>
                        <tr>
                            <td>Password : </td>
                            <td><input type="password" name="password" value="<jsp:getProperty name="user" property="password"/>"></td>
                        </tr>
                        <tr>  
                            <td><center><a href="jsp/register_form.jsp">Register</a></center></td>
                            <td><center><input type="submit" value="Login"></center></td>
                        </tr>
                    </tbody>             
                </table>
            </center>
        </form>               
    </body>
</html>
