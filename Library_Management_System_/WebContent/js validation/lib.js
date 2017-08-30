function validateform(){  
var username=document.liblogin.username.value;  
var password=document.liblogin.password.value;  
  
if (username==null || username==""){  
	  alert("Username can't be blank");  
	  return false;  
	}else if(password==null||password ==""){  
	  alert("Password must needs to login");  
	  return false; 
	}
	}  
