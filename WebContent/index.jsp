<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="Trialcss.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<body>
<center><header>BUG CATCHER</header></center>
 <div class="three-columns">
    <div class="column">
        <h2>Admin</h2>
        <form action="AdminLogin.jsp">
        <input type="submit" value="Login">
        </form>
    </div>
    <div class="column">
        <h2>Developer</h2>
        <form action="DeveloperLogin.jsp">
        <input type="submit" value="Login">
        </form>
    </div>
    <div class="column">
        <h2>Tester</h2>
        <form action="TesterLogin.jsp">
        <input type="submit" value="Login">
        </form>
    </div>
</div> 


</body>
</html>