
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
   <link rel="stylesheet" href="css/user_form.css">
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
            String f_name = request.getParameter("F_name").toUpperCase();
            String l_name = request.getParameter("L_name").toUpperCase();
            String f_id = request.getParameter("family_id").toUpperCase();
            String gender =request.getParameter("gender");
            String dob =request.getParameter("date");
            String mobile =request.getParameter("mobile");
            String blood_grp =request.getParameter("blood").toUpperCase();
            String email = request.getParameter("email");
            String patient_name_for_patientbl = f_name+" "+l_name.toUpperCase();
            String temp_mobile="", temp_email="";

            if(email==""){
                 email="-";
             }
            
            if(mobile==""){
                mobile="-";
             }

            connect conn = new connect();
            Connection connection = conn.createConnection();
            
            String sql = "select * from people where first_name = '"+f_name+"' and last_name = '"+l_name+"' and dob = '"+dob+"' and mobile_no = '"+mobile+"'";
            PreparedStatement stmt2 = connection.prepareStatement(sql);
            
            String sql2 = "select * from family where family_id = '"+f_id+"'";
            PreparedStatement stmt3 = connection.prepareStatement(sql2);
            ResultSet rs2 = stmt3.executeQuery();
            
            String sql3 = "select * from people where mobile_no = '"+mobile+"'";
            String sql4 = "select * from people where email = '"+email+"'";
            
            PreparedStatement stmt20 = connection.prepareStatement(sql3);
            PreparedStatement stmt30 = connection.prepareStatement(sql4);
            
            ResultSet rs20 = stmt20.executeQuery();
            ResultSet rs30 = stmt30.executeQuery();
            
            while(rs20.next())
            {
            temp_mobile = rs20.getString("mobile_no");
             }
             
             while(rs30.next())
            {
            temp_mobile = rs30.getString("email");
             }
            PreparedStatement stmt10 = connection.prepareStatement("insert into patient_name (name) values (?)");
            stmt10.setString(1, patient_name_for_patientbl);
            
            
            
            
            
            //validation
            
            try{
            if(mobile.length()==10){
            if(rs2.next()){
            //check in patient_name
            ResultSet rs1 = stmt2.executeQuery();
            
            
            if(rs1.next()){
                %>
                <script>
                {
                swal("Error","User already exist", "error");
                }
                 </script>
            <%
             }
             else
             {
                stmt10.execute();
                PreparedStatement stmt = connection.prepareStatement("insert into people ( first_name, last_name, family_id , gender, dob, mobile_no , blood_grp,email ) values (?,?,?,?,?,?,?,?)");

            stmt.setString(1, f_name);
            stmt.setString(2, l_name);
            stmt.setString(3, f_id);
            stmt.setString(4, gender);
            stmt.setString(5, dob);
            stmt.setString(6, mobile);
            stmt.setString(7, blood_grp);
            stmt.setString(8, email);
            
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
             }
            }
            else{
                    %>
                <script>
                {
                swal("Error","No such family id found", "error");
                }
                 </script>
            <%
                }}
                else{
                    %>
                <script>
                {
                swal("Error","Mobile number should be of 10 digit", "error");
                }
                 </script>
            <%
                }}
                catch(Exception e){
                     %>
                <script>
                {
                swal("Error","Email and phone number should be valid", "error");
                }
                 </script>
            <%
                }

            
            
        
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
      <img src="images/pic-1.jpg" class="image" alt="">
      <h3 class="name"><%out.println(name);%></h3>
      <p class="role"><%out.println(email1);%></p>
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

   <h1 class="heading">profile details</h1>
   <div class="container">
       <%
           int count=0;
           String sql6 = "select * from people order by user_id desc limit 1 ";
           PreparedStatement stmt6 = connection.prepareStatement(sql6);
           ResultSet rs6 = stmt6.executeQuery();
           while(rs6.next()){
           count = rs6.getInt("user_id");
           }
           
           
       %>
       
        <header><%out.println("User id is : "+count);%></header>
            
        </form>
    </div>
</section>
</body>
</html>
