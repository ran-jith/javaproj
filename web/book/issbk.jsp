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

    <!-------------------------------------------------------------------------->
    <div class="header">
  <a href="#" class="logo">Library</a>
  <div class="header-right">
    <a class="active" href="index.jsp">Home</a>
    <a href="#contact">Contact</a>
    <a href="/javaproj/login.jsp">Admin</a>
  </div>
</div>

<div style="padding-left:20px">
  <h1></h1></div>
  <!----------------------------------------------------------------------------->

 <div class="searchbox">
        <div class="col-md-6">
    		<h2>Search Books</h2>
				<div class="center2">
                <form method="post" action="/javaproj/IssueBook">
                        <input type="text" class="form-control input-lg" placeholder="Search Book" name="hsrbook" ></div><br>
                        <input type="submit" class="center btn btn-primary btn-lg" value="Search">
                </form>


</div>

</div>
       <b> <div class="quats"><b><br><br><br><br><br><br>
          <h class="qp" id="quats"><b>test</b></h>
        </div>


</div>
    
 <script src="js/index.js"></script>

</body>
</html>
