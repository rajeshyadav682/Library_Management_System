function validateform(){  
var username=document.adminlogin.username.value;  
var password=document.adminlogin.password.value;  
if (username==null || username==""){  
	  alert("Username can't be blank");  
	  return false;  
}
if(password==null||password ==""){  
	  alert("password must needs to login");  
	  return false; 
}
	  if(password!="admin"||password !="admin"){  
		  alert("incorrect username password");  
		  return false; 
	  
	}
	}  
