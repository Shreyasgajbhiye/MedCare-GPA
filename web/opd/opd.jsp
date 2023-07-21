<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>OPD</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   <link rel="stylesheet" href="css/style_form.css">
   <link rel="stylesheet" href="css/style_form_opd.css">


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

   <h1 class="heading">OPD</h1>
   <div class="container_opd">
        <header>OPD</header>

        <form id="1" action="opd_index.jsp" id="opd_form" method="post">
            <div class="form first">
                <div class="details personal">

                    <div class="fields_new">
                        <div class="input-field_new">
                            <label>Patient name</label>
                            <input type="text" placeholder="Enter patient name" list="name" name="p_name" list="name" onkeypress="isInputChar(event)" required >
                            <datalist id="name" name="p_name">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select * from people");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("first_name")+" "+rs.getString("last_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>

                        <div class="input-field_new">
                            <label>Symptoms</label>
                            <textarea name="symptoms" cols="15" rows="15" placeholder="Symptoms" onkeypress="isInputChar(event)" required></textarea>
                        </div>

                        <div class="input-field_new">
                            <label>Medicine 1</label>
                            <input type="text" id="search" placeholder="Prescription" name="med1" list="city" onkeypress="isInputChar(event)" required>
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>
                         
                        
                       
                       
                        <div class="input-field_new">
                            
                            <label>Quantity for md 1</label>
                            <input type="text" placeholder="Enter the quantity" name="qt1" onkeypress="isInputNumber(event)" required>
                        </div>
                         
                        <div class="input-field_new">
                            
                            <br>
                            
                            
                        </div>
                         <div class="input-field_new">
                            
                             <br>
                            
                            
                            
                        </div>
                            
                         <div class="input-field_new">
                            
                             <br>
                        </div>
                         <div class="input-field_new">
                            
                             <br>
                        </div>
                        
                        <div class="input-field_new">
                            
                            <label>Medicine 2 (optional)</label>
                            
                            <input type="text" placeholder="Prescription" name="medicine2" list="city" onkeypress="isInputChar(event)">
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>
                            
                        <div class="input-field_new">
                            <label>Quantity for md 2 (optional)</label>
                            <input type="text" placeholder="Enter the quantity" name="qt2" onkeypress="isInputNumber(event)" >
                        </div>
                        
                        <div class="input-field_new">
                            <label>Medicine 3 (optional)</label>
                            <input type="text" placeholder="Prescription" name="medicine3" list="city" onkeypress="isInputChar(event)">
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>

                        <div class="input-field_new">
                            <label>Quantity for md 3 (optional)</label>
                            <input type="text" placeholder="Enter the quantity" name="qt3" onkeypress="isInputNumber(event)">
                        </div>
                        
                        <div class="input-field_new">
                            <label>Medicine 4 (optional)</label>
                            <input type="text" placeholder="Prescription" name="medicine4" list="city" onkeypress="isInputChar(event)" >
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>

                        <div class="input-field_new">
                            <label>Quantity for md 4 (optional)</label>
                            <input type="text" placeholder="Enter the quantity" name="qt4" onkeypress="isInputNumber(event)" >
                        </div>
                        
                        <div class="input-field_new">
                            <label>Medicine 5 (optional)</label>
                            <input type="text" placeholder="Prescription" name="medicine5" list="city" onkeypress="isInputChar(event)">
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>

                        <div class="input-field_new">
                            <label>Quantity for md 5 (optional)</label>
                            <input type="text" placeholder="Enter the quantity" name="qt5" onkeypress="isInputNumber(event)">
                        </div>
                        
                        <div class="input-field_new">
                            <label>Medicine 6 (optional)</label>
                            <input type="text" placeholder="Prescription" name="medicine6" list="city" onkeypress="isInputChar(event)">
                            <datalist id="city">
                                <%
                        try{
                            
                            connect a = new connect();
                            Connection conn = a.createConnection();
                            PreparedStatement stmt = conn.prepareStatement("select medicine_name from medicine");
                            
                
                            ResultSet rs = stmt.executeQuery(); 
                            
                            while(rs.next()){
                            %>
                            <option><%=rs.getString("medicine_name")%></option>
                            <%
                        }
                        }
                        catch(Exception e){    
                        
                        }
                    %>   
                            </datalist>
                        </div>

                        <div class="input-field_new">
                            <label>Quantity for md 6 (optional)</label>
                            <input type="text" placeholder="Enter the quantity" name="qt6" onkeypress="isInputNumber(event)">
                        </div>
                        
                            
                                
                                
                            
                            
                        
                        
                        
                    </div>
                           <table>
                            <tr>
                                
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                                <td><input type="checkbox" name="checkbox" value="checkbox"></td>
                                <td>&nbsp;&nbsp;</td>
                                <td><label>Not from this village</label></td>
                            </tr>
                            </table> 
                                
                </div>
                            
                             
                                
                            <button>Submit..</button>
                
            </div>

            
        </form>
    </div>
</section>
    


<!-- custom js file link  -->
<script src="js/script.js"></script>
<script src="js/jquery-1.2.3.min.js"></script>
<script src="js/jquery.autocomplete.js"></script>
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