<html>
<head>
<title>MyLib</title>

<!--////////////////////////////////////////////////////////////////-->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
 <!--Custom CSS-->
<link href="styles/style.css" rel="stylesheet" type="text/css"/>
<!--////////////////////////////////////////////////////////////////-->


</head>

<body>
  <div class="mainscreen">
    <div class="header">
  <a href="#" class="logo">Library</a>
  <div class="header-right">
    <a  href="index.jsp.html">Home</a>
    <a href="#contact">Contact</a>
    <a class="active" href="login.jsp">Admin</a>
  </div>
</div>

<div style="padding-left:20px">
  <h1>Login here</h1>
</div>
      <form method="post" action="Admin">
          <div class="box">
              <label><b>Username:</b></label>
              <input type="text" name="uname"><br>
              <label><b>Password:</b></label>
              <input type="password" name="pass"><br><br>
              <input type="submit" class="btn btn-lg btn-danger" value="Login">
          </div>
              
      </form>
      
</div>
</body>
</html>
