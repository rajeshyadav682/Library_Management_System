function validateform() {
	var username=document.addlib.uname.value;  
	var fname=document.addlib.fname.value; 
	var lname=document.addlib.lname.value;  
	var password=document.addlib.password.value; 
	var email=document.addlib.email.value;  
	var phn=document.addlib.pno.value; 
	var add = document.addlib.add.value;
var	error = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
var at =email.indexOf("@");
var dot=email.lastIndexOf(".");

	if (username=="")
	{  
		  alert("Username can't be blank");  
		  return false; 
	}
		  if (fname=="")
			{  
				  alert("Enter First name");  
				  return false; 
 }	
		  if (lname=="")
			{  
				  alert("Enter Last name");  
				  return false;
			}
		  if (password=="")
			{  
				  alert("Enter your password");  
				  return false;
			}
		  
		 if(email=="")
			 {
			 alert("please enter  email id");
			 return false;
			 }
		 if(at<1||dot<at+2||dot+2>email.length)
		 {
				alert("invalid email address");
				return false;
			  }
			 
			 if(phn=="")
			 {
			 alert("enter phone number");
			 return false;
			 }
			 
			 if(add=="")
			 {
			 alert("enter address");
			 return false;
			 }
			 else{
				 return true;
			 }
}
