function sendMail() {
  var params = {
    name: document.getElementById("name").value,
    email: document.getElementById("email").value,
   message: document.getElementById("message").value;
  };
    //let otp_val=Math.floor(Math.random()*10000);

  const serviceID = "service_jlna6oq";
  const templateID = "template_eqjc2nc";

    var emailjs.send(serviceID, templateID, params)
    .then(res=>{
        document.getElementById("name").value = "";
        document.getElementById("email").value = "";
        document.getElementById("message").value = "";
        console.log(res);
        
        
                
        alert("Your message sent successfully!!");

       
                
                
                 
            
    })
    .catch(err=>console.log(err));
    
}