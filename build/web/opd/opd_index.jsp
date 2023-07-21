<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Inventory</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

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


         <%
            int qt_1,qt_2,qt_3,qt_4,qt_5,qt_6;
            
            String p_name = request.getParameter("p_name").toUpperCase();
            String symptoms = request.getParameter("symptoms");
            String med1 = request.getParameter("med1").toUpperCase();
            String qt1 = request.getParameter("qt1");
            String med2 = request.getParameter("medicine2").toUpperCase();
            String qt2 = request.getParameter("qt2");
            String med3 = request.getParameter("medicine3").toUpperCase();
            String qt3 = request.getParameter("qt3");
            String med4 = request.getParameter("medicine4").toUpperCase();
            String qt4 = request.getParameter("qt4");
            String med5 = request.getParameter("medicine5").toUpperCase();
            String qt5 = request.getParameter("qt5");
            String med6 = request.getParameter("medicine6").toUpperCase();
            String qt6 = request.getParameter("qt6");
            
            
            
            
            
            
            
            String first_name,last_name;
            
            if(qt1.equals("")){
                qt_1=0;
                med1="-";
             }
             else{
                qt_1 = Integer.parseInt(qt1);
             }
             
             if(qt2.equals("")){
                qt_2=0;
                med2="-";
             }
             else{
                qt_2 = Integer.parseInt(qt2);
                
             }
             
             if(qt3.equals("")){
                qt_3=0;
                med3="-";
             }
             else{
                qt_3 = Integer.parseInt(qt3);
             }
             
             if(qt4.equals("")){
                qt_4=0;
                med4="-";
             }
             else{
                qt_4 = Integer.parseInt(qt4);
             }
             
             if( qt5.equals("")){
                qt_5=0;
                med5="-";
             }
             else{
                qt_5 = Integer.parseInt(qt5);
             }
             
             if( qt6.equals("")){
                qt_6=0;
                med6="-";
             }
             else{
                qt_6 = Integer.parseInt(qt6);
             }
             
            
            
            
            
           
            
            
            String sql = "select * from patient_name where name ='"+p_name+"'" ;
            String sql2 = "select * from medicine where medicine_name='"+med1+"'";
            String sql3 = "select * from medicine where medicine_name='"+med2+"'";
            String sql4 = "select * from medicine where medicine_name='"+med3+"'";
            String sql5 = "select * from medicine where medicine_name='"+med4+"'";
            String sql6 = "select * from medicine where medicine_name='"+med5+"'";
            String sql7 = "select * from medicine where medicine_name='"+med6+"'";
            String sql8 = "select * from medicine where medicine_name='"+med1+"'";
            String sql9 = "select * from medicine where medicine_name='"+med2+"'";
            String sql10 = "select * from medicine where medicine_name='"+med3+"'";
            String sql11= "select * from medicine where medicine_name='"+med4+"'";
            String sql12 = "select * from medicine where medicine_name='"+med5+"'";
            String sql13= "select * from medicine where medicine_name='"+med6+"'";
            String sql14 ="update medicine set quantity = quantity-"+qt_1+" where medicine_name='"+med1+"'";
            String sql15 ="update medicine set quantity = quantity-"+qt_2+" where medicine_name='"+med2+"'";
            String sql16 ="update medicine set quantity = quantity-"+qt_3+" where medicine_name='"+med3+"'";
            String sql17 ="update medicine set quantity = quantity-"+qt_4+" where medicine_name='"+med4+"'";
            String sql18 ="update medicine set quantity = quantity-"+qt_5+" where medicine_name='"+med5+"'";
            String sql19 ="update medicine set quantity = quantity-"+qt_6+" where medicine_name='"+med6+"'";
            int qt21 =0,qt22 =0,qt23 =0,qt24 =0,qt25 =0,qt26 =0;
            connect conn = new connect();
            Connection connection = conn.createConnection();
            
            //user
            Statement stmt11 = connection.createStatement();
            ResultSet rs1 = stmt11.executeQuery(sql);
            
            //medicines
            Statement stmt12 = connection.createStatement();
            ResultSet rs2 = stmt12.executeQuery(sql2);
            
            Statement stmt13 = connection.createStatement();
            ResultSet rs3 = stmt13.executeQuery(sql3);
            
            Statement stmt14 = connection.createStatement();
            ResultSet rs4 = stmt14.executeQuery(sql4);
            
            Statement stmt15 = connection.createStatement();
            ResultSet rs5 = stmt15.executeQuery(sql5);
       
            
            Statement stmt16 = connection.createStatement();
            ResultSet rs6 = stmt16.executeQuery(sql6);
            
            Statement stmt17 = connection.createStatement();
            ResultSet rs7 = stmt17.executeQuery(sql7);
            
            //quantity
            Statement stmt18 = connection.createStatement();
            ResultSet rs8= stmt18.executeQuery(sql8);
            
            Statement stmt19 = connection.createStatement();
            ResultSet rs9 = stmt19.executeQuery(sql9);
            
            Statement stmt20 = connection.createStatement();
            ResultSet rs10 = stmt20.executeQuery(sql10);
            
            Statement stmt21 = connection.createStatement();
            ResultSet rs11= stmt21.executeQuery(sql11);
            
            Statement stmt22 = connection.createStatement();
            ResultSet rs12= stmt22.executeQuery(sql12);
            
            Statement stmt23 = connection.createStatement();
            ResultSet rs13= stmt23.executeQuery(sql13);
            
            
            
            while(rs8.next())
                {
                qt21 = rs8.getInt("quantity");
            }
            
            while(rs9.next())
                {
                qt22 = rs9.getInt("quantity");
            }
            
            while(rs10.next())
                {
                qt23 = rs10.getInt("quantity");
            }
            
            while(rs11.next())
                {
                qt24 = rs11.getInt("quantity");
            }
            
            while(rs12.next())
                {
                qt25 = rs12.getInt("quantity");
            }
            
            while(rs13.next())
                {
                qt26 = rs13.getInt("quantity");
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
         <p class="role"><%out.println(email);%></p>
         <a href="../profile.jsp" class="btn">view profile</a>
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
      <a href="../profile.jsp" class="btn">view profile</a>
   </div>

   <nav class="navbar">
      <a href="../home.jsp"><i class="fas fa-home"></i><span>Home</span></a>
      <a href="../opd_ui.jsp"><i class="fa-solid fa-stethoscope"></i><span>OPD</span></a>
      <a href="../inventory.jsp"><i class="fa-solid fa-truck-medical"></i><span>Inventory</span></a>
      <a href="../database.jsp"><i class="fa-solid fa-database"></i><span>Database</span></a>
      <a href="../about.jsp"><i class="fas fa-question"></i><span>about</span></a>
      <a href="../contact.jsp"><i class="fas fa-headset"></i><span>contact us</span></a>
   </nav>

    
</div>
      <section class="teacher-profile">

   <h1 class="heading">Results..</h1>
   <div class="container">
        
       <%
           String check = request.getParameter("checkbox");
           if(check==null){
           
           //new
           if (rs1.next()){
                if(rs2.next()){
                    if(med2=="-" || rs3.next() ){
                        if(rs4.next() || med3=="-"){
                            if(rs5.next() || med4=="-"){
                                if(rs6.next() || med5=="-"){
                                    if(rs7.next() || med6=="-"){
                                        if(qt_1<=qt21){
                                            if(qt_2<=qt22  ){
                                                if(qt_3<=qt23){
                                                    if(qt_4<=qt24){
                                                        if(qt_5<=qt25){
                                                            if(qt_6<=qt26 ){
                                                             
            
            Statement stmt = connection.createStatement();

            
            Statement stmt24 = connection.createStatement();
            int rs14= stmt24.executeUpdate(sql14);
            
            Statement stmt25 = connection.createStatement();
            int rs15= stmt25.executeUpdate(sql15);
            
            Statement stmt26= connection.createStatement();
            int rs16= stmt26.executeUpdate(sql16);
            
            Statement stmt27= connection.createStatement();
            int rs17= stmt27.executeUpdate(sql17);
            
            Statement stmt28 = connection.createStatement();
            int rs18= stmt28.executeUpdate(sql18);
            
            Statement stmt29 = connection.createStatement();
            int rs19= stmt29.executeUpdate(sql19);
            
            int i=stmt.executeUpdate("insert into opd (patient_name,symptoms,med1,quantity_1,med2,quantity_2,med3,quantity_3,med4,quantity_4,med5,quantity_5,med6,quantity_6) values ('"+p_name+"','"+symptoms+"','"+med1+"',"+qt_1+",'"+med2+"',"+qt_2+",'"+med3+"',"+qt_3+",'"+med4+"',"+qt_4+",'"+med5+"',"+qt_5+",'"+med6+"',"+qt_6+")");

            
            if(i<=0){
            %>
                <script>
                {
                swal("Error","Data not inserted", "error");
                }
                 </script>
            <%
                out.println("<h1>RECORD NOT INSERTED</h1>");
            }
            else{
                %>
                <script>
                {
                swal("Success","Data inserted successfully", "success");
                }
                 </script>
            <%
                out.println("<h1>RECORD INSERTED</h1>");
            }
             
                                                            
             }
else{
             %>
                 <script>
            {
            swal("Error","Med6 quantity error!", "error");
            }
                 </script>
                 <%
                                                           out.println("<h1>Medicine 6 quantity error</h1>");
                     }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med5 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 5  quantity error</h1>");

             }
             }
else{
             %>
                 <script>
            {
            swal("Error","Med4 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 4 quantity error</h1>");

             }}
             else{
                    %>
                 <script>
            {
            swal("Error","Med3 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 3 quantity error</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med2 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 2 quantity error</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med1 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 1 quantity error</h1>");

             }
                                    
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med6 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 6 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med5 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 5 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med4 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 4 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med3 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 3 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med2 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 2 not exist</h1>");

             }
             }
             else{
                %>
                 <script>
            {
            swal("Error",Med1 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 1 not exist</h1>");

             }
             }
             else{
                %>
                 <script>
            {
            swal("Error","User not exist!", "error");
            }
                 </script>
                 
                 
                 <%
                                  out.println("<h1>User not exist</h1>");

             }
            
           }

           //user from this village
           else{
            if(rs2.next()){
                    if(med2=="-" || rs3.next() ){
                        if(rs4.next() || med3=="-"){
                            if(rs5.next() || med4=="-"){
                                if(rs6.next() || med5=="-"){
                                    if(rs7.next() || med6=="-"){
                                        if(qt_1<=qt21){
                                            if(qt_2<=qt22  ){
                                                if(qt_3<=qt23){
                                                    if(qt_4<=qt24){
                                                        if(qt_5<=qt25){
                                                            if(qt_6<=qt26 ){
                                                             
            
            Statement stmt = connection.createStatement();

            
            Statement stmt24 = connection.createStatement();
            int rs14= stmt24.executeUpdate(sql14);
            
            Statement stmt25 = connection.createStatement();
            int rs15= stmt25.executeUpdate(sql15);
            
            Statement stmt26= connection.createStatement();
            int rs16= stmt26.executeUpdate(sql16);
            
            Statement stmt27= connection.createStatement();
            int rs17= stmt27.executeUpdate(sql17);
            
            Statement stmt28 = connection.createStatement();
            int rs18= stmt28.executeUpdate(sql18);
            
            Statement stmt29 = connection.createStatement();
            int rs19= stmt29.executeUpdate(sql19);
            
            int i=stmt.executeUpdate("insert into opd (patient_name,symptoms,med1,quantity_1,med2,quantity_2,med3,quantity_3,med4,quantity_4,med5,quantity_5,med6,quantity_6) values ('"+p_name+"','"+symptoms+"','"+med1+"',"+qt_1+",'"+med2+"',"+qt_2+",'"+med3+"',"+qt_3+",'"+med4+"',"+qt_4+",'"+med5+"',"+qt_5+",'"+med6+"',"+qt_6+")");

            
            if(i<=0){
            %>
                <script>
                {
                swal("Error","Data not inserted", "error");
                }
                 </script>
            <%
                out.println("<h1>RECORD NOT INSERTED</h1>");
            }
            else{
                %>
                <script>
                {
                swal("Success","Data inserted successfully", "success");
                }
                 </script>
            <%
                out.println("<h1>RECORD INSERTED</h1>");
            }
             
                                                            
             }
else{
             %>
                 <script>
            {
            swal("Error","Med6 quantity error!", "error");
            }
                 </script>
                 <%
                                                           out.println("<h1>Medicine 6 quantity error</h1>");
                     }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med5 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 5  quantity error</h1>");

             }
             }
else{
             %>
                 <script>
            {
            swal("Error","Med4 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 4 quantity error</h1>");

             }}
             else{
                    %>
                 <script>
            {
            swal("Error","Med3 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 3 quantity error</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med2 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 2 quantity error</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med1 quantity error!", "error");
            }
                 </script>
                 <%
                                                                                out.println("<h1>Medicine 1 quantity error</h1>");

             }
                                    
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med6 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 6 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med5 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 5 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med4 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 4 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med3 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 3 not exist</h1>");

             }
             }
             else{
             %>
                 <script>
            {
            swal("Error","Med2 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 2 not exist</h1>");

             }
             }
             else{
                %>
                 <script>
            {
            swal("Error",Med1 not exist!", "error");
            }
                 </script>
                 <%
                                      out.println("<h1>Medicine 1 not exist</h1>");

             }
                
           }
            
             


//new



       %>
       
       
       
       
       
    </div>
</section>
</body>
</html>