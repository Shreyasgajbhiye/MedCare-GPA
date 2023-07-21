
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>village process page</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../../css/style.css">
   <link rel="stylesheet" href="../../css/user_form.css">
    </head>
    <body>
        <%@ page import = "java.sql.*" %>
        <%@ page import = "javax.sql.*" %>
        <%@ page import="pkg.connect" %>

       <%
           String email1="",name="";
           email1 = session.getAttribute("email").toString();
           name = session.getAttribute("name").toString();
       %>
         <%
            //String user_id = request.getParameter("user_id");
            String first_name = request.getParameter("F_name").toUpperCase();
            String last_name = request.getParameter("L_name").toUpperCase();
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            String re_pass = request.getParameter("re_pass");
            connect conn = new connect();
            Connection connection = conn.createConnection();
            if(pass.length()>=8){
            if(re_pass.length()>=8){
            if(pass.equals(re_pass)){
                
            
            String sql = "select * from doctor where first_name = '"+first_name+"' and last_name = '"+last_name+"' and email = '"+email+"'";
            PreparedStatement stmt = connection.prepareStatement(sql);
            
            ResultSet rs = stmt.executeQuery();
            
            if(rs.next()){
                %>
                <script>
                {
                swal("Error","Account already exists", "error");
                }
                 </script>
            <%
            }   
            else{
                String sql2= "insert into doctor (first_name,last_name,email,password) values (?,?,?,?)";
                PreparedStatement stmt2 = connection.prepareStatement(sql2);

                stmt2.setString(1, first_name);
                stmt2.setString(2, last_name);
                stmt2.setString(3, email);
                stmt2.setString(4, pass);

                int i = stmt2.executeUpdate();

                if(i<=0){
                    %>
                <script>
                {
                swal("Error","Account not created", "error");
                }
                 </script>
            <%
                }
                else{
                    %>
                <script>
                {
                swal("Success","Account successfully created", "success");
                }
                 </script>
            <%
                    }
            }
             }
             else{
                %>
                <script>
                {
                swal("Error","Password is not same on both field", "error");
                }
                 </script>
            <%
             }}
            else{
                    %>
                <script>
                {
                swal("Error","Re-Password should be of 8 digit", "error");
                }
                 </script>
            <%
                }
                }
            else{
            %>
                <script>
                {
                swal("Error","Password should be of 8 digit", "error");
                }
                 </script>
            <%
                }
            
            

            
            
            
            
            
            
            
        
         %>
      <header class="header">
   
   <section class="flex">

      <a href="admin_homepage.jsp" class="logo">Medcare.</a>

      <div class="icons">
         
         <div id="user-btn" class="fas fa-user"></div>
         
      </div>

      <div class="profile">
         <img src="pic-1.jpg" class="image" alt="">
         <h3 class="name"><%out.println(name);%></h3>
         <p class="role"><%out.println(email1);%></p>
         <a href="profile.jsp" class="btn">view profile</a>
         <div class="flex-btn">
            <a href="logout.jsp" class="option-btn">logout</a>
            
         </div>
      </div>

   </section>

</header>   

<div class="side-bar">

   <div id="close-btn">
      <i class="fas fa-times"></i>
   </div>

   <div class="profile">
      <img src="pic-1.jpg" class="image" alt="">
      <h3 class="name"><%out.println(name);%></h3>
      <p class="role"><%out.println(email1);%></p>
      <a href="profile.jsp" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="admin_homepage.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      <a href="register/insert_doctor.jsp"><i class="fa-regular fa-id-card"></i><span>Register doctor</span></a>
      <a href="show/show_doctor.jsp"><i class="fa-solid fa-users-viewfinder"></i><span>View doctors</span></a>
      <a href="../index2.jsp"><i class="fa-sharp fa-solid fa-street-view"></i><span>Doctor privilege</span></a>
   </nav>

    
</div>
      <section class="teacher-profile">

   <h1 class="heading">profile details</h1>
   <div class="container">
       
       
        <%
           int count=0;
           String sql6 = "select * from doctor order by id desc limit 1 ";
           PreparedStatement stmt6 = connection.prepareStatement(sql6);
           ResultSet rs6 = stmt6.executeQuery();
           while(rs6.next()){
           count = rs6.getInt("id");
           }
           
           
       %>
       
        <header><%out.println("Current doctor id is : "+count);%></header>
            
        </form>
    </div>
</section>
</body>
</html>
