
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
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/family_form.css">
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


         <%
            String temp_v="";
            int temp_id=0;
            String V_name = request.getParameter("village");
            String V_code =request.getParameter("address").toUpperCase();
            String sql1 = "select * from villages where village_name = '"+V_name+"'";
            String sql2 = "select count(*) from family";
            
            connect conn = new connect();
            Connection connection = conn.createConnection();
            
            PreparedStatement stmt1 = connection.prepareStatement(sql1);
            ResultSet rs1 = stmt1.executeQuery();
            while(rs1.next()){
                temp_v = rs1.getString("village_id");
             }
             
            PreparedStatement stmt2= connection.prepareStatement(sql2);
            ResultSet rs2= stmt2.executeQuery();
            rs2.next();
            temp_id = rs2.getInt(1);
             
             temp_id += 1;
            String F_id = temp_v+temp_id;
            PreparedStatement stmt = connection.prepareStatement("insert into family (family_id, village , address ) values (?,?,?)");
            stmt.setString(1, F_id);
            stmt.setString(2, V_name);
            stmt.setString(3, V_code);
            
            int i = stmt.executeUpdate();
            
            
            if(i<=0){
            %>
                <script>
                {
                swal("Error","Data not inserted", "error");
                }
                 </script>
            <%
            }
            else{
                %>
                <script>
                {
                swal("Success","Data inserted successfully", "success");
                }
                 </script>
            <%
            }
            
            String sql3 = "select * from family where family_id = '"+F_id+"'";
            PreparedStatement stmt3= connection.prepareStatement(sql3);
            ResultSet rs3= stmt3.executeQuery();
            rs3.next();
            String family_id_og = rs3.getString("family_id");
         %>
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

   <h1 class="heading">FAMILY ID IS : <%out.println(family_id_og);%></h1>
   
</section>
</body>
</html>
