<html>
<head>
<title>MyLib</title>

<!--////////////////////////////////////////////////////////////////


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
  <!-- jQuery library -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <!-- Latest compiled JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <!--END BOOTSTRAP-->

  <!--Custom CSS-->
<link href="styles/style.css" rel="stylesheet" type="text/css"/>
<!--////////////////////////////////////////////////////////////////-->


</head>

<body>
  <div class="mainscreen">

    <div class="header">
        <a href="#" class="logo">Library</a>
        <div class="header-right">
          <a class="active" href="index.jsp">Home</a>
          <a href="#contact">Contact</a>
          <a href="login.jsp">Admin</a>
        </div>
      </div>

      <div style="padding-left:20px">
        <h1></h1></div>


        <div class="splitleft">
          <h1 class="bkhead"><b>Manage Books</b></h1>
          <br><br><br><br><br>
          <a href="book/addbk.jsp"><button type="btn btn-lg btn-danger">Add Book</button></a><br><br>
          <a href="Display"><button type="btn btn-lg btn-danger">Update Book</button></a><br><br>
          <a href="delbk.jsp"><button type="btn btn-lg btn-danger">Delete Book</button></a><br><br>
          <a href="issbk.jsp"><button type="btn btn-lg btn-danger">Issue Book</button></a><br><br>
          <a href="retbk.jsp"><button type="btn btn-lg btn-danger">Return Book</button></a><br>

        </div>

        <div class="splitright">
          <h1 class="sthead"><b>Manage Students</b></h1>
          <br><br><br><br><br>
          <form method="post" action="/library/Search">
          <a href="/library/Search"><button type="btn btn-lg btn-danger">Add Student</button></a><br><br>
          <a href="delstud.jsp"><button type="btn btn-lg btn-danger">Delete Student</button></a><br><br>
          <a href="upstud.jsp"><button type="btn btn-lg btn-danger">Update Student</button></a><br><br>
          </form>
        </div>




  </div>
</body>
</html>
