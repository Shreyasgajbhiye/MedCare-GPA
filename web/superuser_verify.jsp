<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Verify</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    </head>
    <body>
        <%@ page import = "java.sql.*" %>
        <%@ page import = "javax.sql.*" %>
        <%@ page import="pkg.connect" %>
        <%
            String email = request.getParameter("useremail");
            String pass = request.getParameter("passtxt");
            String checkbox = request.getParameter("checkbox");
            String first_name="",last_name=""; 
            
            
            
             connect conn = new connect();
                Connection connection = conn.createConnection();
                PreparedStatement stmt = connection.prepareStatement("select * from super_admin where email = ? and password = ?");
                stmt.setString(1,email);
                stmt.setString(2,pass);
                
                
                PreparedStatement stmt1 = connection.prepareStatement("select * from super_admin where email = ?");
                stmt1.setString(1,email);
                ResultSet rs1 = stmt1.executeQuery();
                while(rs1.next()){
                first_name = rs1.getString("first_name");
                last_name = rs1.getString("last_name");
            }
                
            String name = first_name+" "+last_name;
            
                ResultSet rs = stmt.executeQuery();
                if(rs.next()){
                    
                    session.setAttribute("email",email);
                    session.setAttribute("name",name);
                    response.sendRedirect("home.jsp");
                }
                else
                {
                %>
                <script>
                {
                swal("Error","Wrong Credentials admin", "error");
                }
                 </script>
            <%
            }

        %>
    <button id="redirect">Go back</button>
        <script> 
            document.querySelector('#redirect')
                    .addEventListener('click',()=> {
                        window.location.href = 'http://localhost:7700/major/index.html';
            });
                 
        </script>
    </body>
    
</html>
