<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>home</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../css/style.css">

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
         
          <div id="user-btn" class="fas fa-user" onclick=""></div>
         
      </div>

      <div class="profile">
         <img src="pic-1.jpg" class="image" alt="">
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
      <img src="pic-1.jpg" class="image" alt="">
      <h3 class="name"><%out.println(name);%></h3>
      <p class="role"><%out.println(email);%></p>
      <a href="profile.jsp" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="admin_homepage.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      <a href="register/insert_doctor.jsp"><i class="fa-regular fa-id-card"></i><span>Register doctor</span></a>
      <a href="show/show_doctor.jsp"><i class="fa-solid fa-users-viewfinder"></i><span>View doctors</span></a>
      <a href="../index2.jsp"><i class="fa-sharp fa-solid fa-street-view"></i><span>Doctor privilege</span></a>
   </nav>

</div>

<section class="home-grid">


    <section class="home" id="home">

    <div class="image">
        <img src="about-img_1.svg" alt="">
    </div>

    <div class="content">
        <h3>Hello Admin</h3>
        <p><%out.println(name);%></p>
    </div>

    </section>
</section>





















<!-- custom js file link  -->
<script src="js/script.js"></script>
<script>
    logout(){
        
    }
</script>
   
</body>
</html>
