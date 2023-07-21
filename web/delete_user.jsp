<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Add Family</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/delete.css">

</head>
<body>
    <%
           String email="",name="";
           email = session.getAttribute("email").toString();
           name = session.getAttribute("name").toString();
       %>
<%@ page import = "java.sql.*" %>
        <%@ page import = "javax.sql.*" %>
        <%@ page import="pkg.connect" %>

<header class="header">
   
   <section class="flex">

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

<section class="teacher-profile">

   <h1 class="heading">Delete user information</h1>
   <div class="container">
        <header>Delete operation</header>

        <form action="delete_user_process.jsp" method="post">
            <div class="form first">
                <div class="details personal">

                    <div class="fields_new">
                        <div class="input-field_new">
                            <label>User id</label>
                            <input type="text" placeholder="Enter user id" name="u_id" required>
                        </div>
                        

                        
                        
                        

                    </div>
                    <button class="sumbit">
                            <input type="submit" name="submit">
                        </button>
                </div>

                
            </div>

            
        </form>
    </div>
</section>
    


<!-- custom js file link  -->
<script src="js/script.js"></script>

   
</body>
</html>
