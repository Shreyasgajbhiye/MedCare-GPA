<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Insert villages</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="style_form.css">

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
         <a href="../../profile.jsp" class="btn">view profile</a>
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
      <a href="../../profile.jsp" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="../../home.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      <a href="../../opd_ui.jsp"><i class="fa-solid fa-stethoscope"></i><span>OPD</span></a>
      <a href="../../inventory.jsp"><i class="fa-solid fa-truck-medical"></i><span>Inventory</span></a>
      <a href="../../database.jsp"><i class="fa-solid fa-database"></i><span>Database</span></a>
      <a href="../../about.jsp"><i class="fas fa-question"></i><span>about</span></a>
      <a href="../../contact.jsp"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

</div>

<section class="teacher-profile">

   <h1 class="heading">Insert medicines</h1>
   <div class="container">
        <header>Insert medicines</header>

        <form action="medicine_process.jsp" method="post">
            <div class="form first">
                <div class="details personal">

                    <div class="fields_new">
                        

                        <div class="input-field_new">
                            <label>Name</label>
                            <input type="text" placeholder="Enter medicine name" name="medicine_name" onkeypress="isInputChar(event)" required>
                        </div>

                        <div class="input-field_new">
                            <label>Quantity</label>
                            <input type="number" placeholder="Enter qunatity" name="quantity" onkeypress="isInputNumber(event)" required>
                        </div>

                         <div class="input-field_new">
                            <label>Expiry date</label>
                            <input type="date" name="exp_date" id="demo" required>
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
<script >
            var date=new Date();
            var tdate=date.getDate();
              if(tdate <10){
                tdate="0"+tdate;
            }
            var month=date.getMonth()+1;
            if(month <10){
                month="0"+month;
            }
            var year=date.getUTCFullYear();
            
            var mindate= year + "-"+month+"-"+tdate;
            document.getElementById("demo").setAttribute('min',mindate);
            console.log(mindate);
        </script>
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