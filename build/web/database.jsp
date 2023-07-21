<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Database</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

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


   <div class="box-container">

    <div class="box">
         <div class="tutor">
            <div>
               <h3>Insert villages </h3>
               <span>Villages</span>
            </div>
         </div>
         <a href="insert_villages.jsp" class="inline-btn">Go..</a>
      </div>


      <div class="box">
         <div class="tutor">
            
            <div>
               <h3>Insert Family </h3>
               <span>Family</span>
            </div>
         </div>
         <a href="insert_family.jsp" class="inline-btn">Go..</a>
      </div>


      <div class="box">
         <div class="tutor">
            
            <div>
               <h3>Insert User </h3>
               <span>User</span>
            </div>
         </div>
         <a href="insert_user.jsp" class="inline-btn">Go..</a>
      </div>

       <div class="box">
         <div class="tutor">
            <div>
               <h3>Villages</h3>
               <span>Show villages</span>
            </div>
         </div>
         <a href="show_village.jsp" class="inline-btn">Show..</a>
      </div>

       
      <div class="box">
         <div class="tutor">
            <div>
               <h3>Family</h3>
               <span>Show families</span>
            </div>
         </div>
         <a href="show_families.jsp" class="inline-btn">Show..</a>
      </div>

       <div class="box">
         <div class="tutor">
            <div>
               <h3>User</h3>
               <span>Show users </span>
            </div>
         </div>
         <a href="show_users.jsp" class="inline-btn">Show..</a>
      </div>

        <div class="box">
         <div class="tutor">
            <div>
               <h3>Archive villages</h3>
            </div>
         </div>
         <a href="village_archive.jsp" class="inline-btn">Show..</a>
      </div>
       
       <div class="box">
         <div class="tutor">
            <div>
               <h3>Archive family</h3>
            </div>
         </div>
         <a href="family_archive.jsp" class="inline-btn">Show..</a>
      </div>
       
       <div class="box">
         <div class="tutor">
            <div>
               <h3>Archive user</h3>
            </div>
         </div>
         <a href="user_archive.jsp" class="inline-btn">Show..</a>
      </div>
    
       <div class="box">
         <div class="tutor">
            <div>
               <h3>Print database in Excel</h3>
            </div>
         </div>
         <a href="print_database.jsp" class="inline-btn">Show..</a>
      </div>

</section>



<!-- custom js file link  -->
<script src="js/script.js"></script>

   
</body>
</html>