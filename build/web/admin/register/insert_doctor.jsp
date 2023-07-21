<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Add doctor</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="../../css/style.css">
   <link rel="stylesheet" href="../../css/user_form.css">

</head>
<body>
<%@ page import = "java.sql.*" %>
        <%@ page import = "javax.sql.*" %>
        <%@ page import="pkg.connect" %>

<header class="header">
   <%
           String email="",name="";
           email = session.getAttribute("email").toString();
           name = session.getAttribute("name").toString();
       %>
   <section class="flex">

      <a href="admin_homepage.jsp" class="logo">Medcare.</a>


      <div class="icons">
         
         <div id="user-btn" class="fas fa-user"></div>
        
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
      <a href="../profile.jsp" class="btn">view profile</a>
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
        <header>Create new user</header>

        <form action="doctor_process.jsp" method="post">
            <div class="form first">
                <div class="details personal">

                    <div class="fields_new">
                        
                        
                        <div class="input-field_new">
                            <label>First name</label>
                            <input type="text" placeholder="First name" name="F_name" onkeypress="isInputChar(event)" required>
                        </div>
                        
                        <div class="input-field_new">
                            <label>Last name</label>
                            <input type="text" placeholder="Last name" name="L_name"  onkeypress="isInputChar(event)" required>
                        </div>
                        
                        

                      
                    
                    <div class="input-field_new">
                            <label>email</label>
                            <input type="text" placeholder="Enter email" name="email" required>
                        </div>
                    
                    <div class="input-field_new">
                            <label>Password</label>
                            <input type="password" placeholder="Password" name="pass"   required>
                        </div>
                        
                    
                    
                        
                    
                    <div class="input-field_new">
                            <label>Retype password </label>
                            <input type="password" placeholder="Re-type password" name="re_pass" required>
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
<script>
    function isInputNumber(evt){
        var ch = String.fromCharCode(evt.which);
        
        if(!(/[0-9]/.test(ch))){
            evt.preventDefault();
        }
    }
</script>

<script>
    function isInputChar(evt){
        var char = evt.which;
        
        if(char > 31 && char !== 32 && (char<65 || char>90) && (char < 97 || char>122)){
            evt.preventDefault();
        }
    }
</script>
   
</body>
</html>