<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
   
    <title>Login Form</title>
    <link rel="stylesheet" href="css/xxx.css">
    <link rel="stylesheet" href="css/xxx.css" type="text/css"/>

  </head>
  <body>
      <div class="image_log">
        <img src="images/dc.svg" alt="">
      </div>
      <div class="center">
          
          <h1>Super-Admin login</h1>
          <form action="superuser_verify.jsp" method="post">
              <div class="txt_field">
                  <input type="text" name="useremail" required>
                  <span></span>
                  <label>Email</label>
                  
              </div>
              
              <div class="txt_field">
                  
                  <input type="password" name="passtxt" required>
                   <span></span>
                   <label>Password</label>
                  
              </div>
              
              
              <br>
              <input type="submit" name="btnsubmit" value="Submit">
              <div class="signup_link">
              </div>
              
          </form>
          
      </div>
      
      
  </body>
</html>