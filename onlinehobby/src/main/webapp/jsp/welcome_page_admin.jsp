<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ro.oho.rest.model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        
        <%  
            HttpSession sessionUser=request.getSession(false);  
            User user=(User)sessionUser.getAttribute("user");
                      
            
            out.print("Welcome admin ");
            out.print(user.getNume());
            out.print(" ");
            out.print(user.getPrenume());
            out.print(" !");
        %>
               
        <br><br>
        <a href="logout.jsp.html">Log Out</a>
        <br><br> 
    </body>
</html>
