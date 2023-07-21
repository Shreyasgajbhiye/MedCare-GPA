<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Villages</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/style_table.css">

</head>
<body>

<header class="header">
   
   <section class="flex">
       <%
           String email="",name="";
           email = session.getAttribute("email").toString();
           name = session.getAttribute("name").toString();
       %>
      <a href="home.html" class="logo">Medcare.</a>


      <div class="icons">
         <div id="menu-btn" class="fas fa-bars"></div>
         <div id="search-btn" class="fas fa-search"></div>
         <div id="user-btn" class="fas fa-user"></div>
         <div id="toggle-btn" class="fas fa-sun"></div>
      </div>

      <div class="profile">
         <img src="images/pic-1.jpg" class="image" alt="">
         <h3 class="name"><%out.println(name);%></h3>
         <p class="role"><%out.println(email);%></p>
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
      <img src="images/pic-1.jpg" class="image" alt="">
      <h3 class="name"><%out.println(name);%></h3>
      <p class="role"><%out.println(email);%></p>
      <a href="profile.jsp" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="home.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      <a href="opd_ui.jsp"><i class="fa-solid fa-stethoscope"></i><span>OPD</span></a>
      <a href="inventory.jsp"><i class="fa-solid fa-truck-medical"></i><span>Inventory</span></a>
      <a href="database.jsp"><i class="fa-solid fa-database"></i><span>Database</span></a>
      <a href="about.jsp"><i class="fas fa-question"></i><span>about</span></a>
      <a href="contact.jsp"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

</div>

<section class="teachers">

   <h1 class="heading">Database here.</h1>
   <div>
            
            <input type="text" id="myInput" name="search" placeholder="Search here.." onkeyup="search()">
            &nbsp;
            <a href=""><i class="glyphicon glyphicon-search"></i></a>
        </div>
        <br>

   <div class="box-container">

    
    <%@ page import = "java.sql.*" %>
    <%@ page import = "javax.sql.*" %>
    <%@ page import="pkg.connect" %>
    
        <table id="employee_table" border="1">
            
            <tr>
                <th>User id</th>
                <th>Name</th>
                <th>Family id</th>
                <th>Gender</th>
                <th>DOB</th>
                <th>Phone no.</th>
                <th>Blood  group</th>
                <th>email</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
            
        
    
    <%
            connect conn = new connect();
            Connection connection = conn.createConnection();
            String sql = "select * from people_archive";
                
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            
            while(rs.next())
                {
                    out.println("<tr><td>"+rs.getString("user_id")+"</td><td>"+rs.getString("first_name")+" "+rs.getString("last_name")+"</td><td>"+rs.getString("family_id")+"</td><td>"+rs.getString("gender")
                    +"</td><td>"+rs.getString("dob")+"</td><td>"+rs.getString("mobile_no")+"</td><td>"+rs.getString("blood_grp")+"</td><td>"+rs.getString("email")+"</td><td><a href='update_user.jsp'>Update</a></td>"
                    + "<td><a href='delete_user.jsp'>Delete</a></td></tr>");
                    
                }
    %>
        </table>
</section>


<!-- custom js file link  -->
<script src="js/script.js"></script>
<script>  
      $(document).ready(function(){  
           $('#myInput').keyup(function(){  
                search_table($(this).val());  
           });  
           function search_table(value){  
                $('#employee_table tr').each(function(){  
                     var found = 'false';  
                     $(this).each(function(){  
                          if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                          {  
                               found = 'true';  
                          }  
                     });  
                     if(found === 'true')  
                     {  
                          $(this).show();  
                     }  
                     else  
                     {  
                          $(this).hide();  
                     }  
                });  
           }  
      });  
 </script> 

   
</body>
</html>
