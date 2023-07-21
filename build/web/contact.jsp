<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>contact us</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <script src="js/contact.js"></script>

    <script
      type="text/javascript"
      src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"
    ></script>
    <script type="text/javascript">
      (function () {
        emailjs.init("-L7vlMim2RBnaJF-A");
      })();
    </script>
</head>
<body>


<header class="header">
   
   <section class="flex">
       <%
           String email="",name="";
           email = session.getAttribute("email").toString();
           name = session.getAttribute("name").toString();
       %>
      <a href="home.jsp" class="logo">Medcare.</a>


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



<section class="contact">

   <div class="row">

      <div class="image">
         <img src="images/contact-img.svg" alt="">
      </div>

      <form action="" method="post">
         <h3>Feedback</h3>
         <input type="text" placeholder="Enter your name" id="name" name="name" required maxlength="50" class="box">
         <input type="email" placeholder="Enter your email"  id="email" name="email" required maxlength="50" class="box">
         <textarea name="msg" class="box" placeholder="Feedback" id="message" name="message" required maxlength="1000" cols="30" rows="10"></textarea>
         <input type="submit" class="inline-btn" name="submit" onclick="sendMail()">
      </form>

   </div>

   <div class="box-container">

      <div class="box">
         <i class="fas fa-phone"></i>
         <h3>Phone number : </h3>
         <a href="#">123456789</a>
      </div>
      
      <div class="box">
         <i class="fas fa-envelope"></i>
         <h3>Email address : </h3>
         <a href="mailto:xyz@gmail.com">xyz@gmail.com</a>
      </div>

      

   </div>

</section>




<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="js/contact.js"></script>

  <script>
        
    </script>
</body>
</html>