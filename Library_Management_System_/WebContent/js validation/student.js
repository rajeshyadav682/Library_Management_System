function validateform(){  
var username=document.studentlogin.username.value;  
var password=document.studentlogin.password.value;  
if (username==null || username==""){  
	  alert("Username can't be blank");  
	  return false;  
	}else if(password==null||password ==""){  
	  alert("password must needs to login");  
	  return false; 
	}
	}  
