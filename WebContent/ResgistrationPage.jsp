<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <script> 
 	function develop(){
	 var newSel = document.getElementById("project").value;
	 var container = document.getElementById("form");
	 if(newSel==="Developer")
	 {	
		 var input = document.createElement("input");
		 container.appendChild(document.createElement("center"));
		 input.type = "text";
         input.name = "member";
       
         container.appendChild(input);
         // Append a line break 
         container.appendChild(document.createElement("br"));
         container.appendChild(document.createElement("center"));
	 }
 }
 		  	
 </script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<form id="form" action="register" method="post">
    <center><h1>Registration</h1></center>
    <hr>
    <center>
    
    <label for="name"><b>Name: </b></label><br>
    <input type="text" placeholder="Enter Name" name="name" required><br>
    
    <label for="email"><b>Email: </b></label><br>
    <input type="text" placeholder="Enter Email" name="email" required><br>

    <label for="psw"><b>Password: </b></label><br>
    <input type="password" placeholder="Enter Password" name="psw" required><br>

    <label for="psw_repeat"><b>Repeat Password: </b></label><br>
    <input type="password" placeholder="Repeat Password" name="psw_repeat" required><br>
    <br>
    
    <label for="emptype"><b>Employee Type: </b></label>
    
     <select id= "project" onchange="develop()">
     
  <option value="No"> No Selection</option> 
  <option value="Developer">Developer</option>
  <option value="Tester">Tester</option>
  </select><br><br>
  <input type="submit" value="Register"> 
  </center>
  </form>
  
</body>
</html>