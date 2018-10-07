<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
          <a href="/login.jsp">Admin</a>
        </div>
      </div>

      <div style="padding-left:20px">
        <h1></h1></div>
      
      <%
                int count = 0;
                String color = "#F9EBB3";
                if (request.getAttribute("bklist") != null) {
                    ArrayList al = (ArrayList) request.getAttribute("bklist");
                    System.out.println(al);
                    Iterator itr = al.iterator();
                    while (itr.hasNext()) {
                        count ++;
                        ArrayList books = (ArrayList) itr.next();
            %>
            <div class="container">
            <h2>Update Book</h2>
             <form class="form-horizontal" action="Updated" method="post">
                 
                 <div class="form-group">
                <label class="control-label col-sm-2" for="authorname">Book Id:</label>
                <div class="col-sm-5">          
                    <input type="text" class="form-control" id="bid" value="<%=books.get(0)%>" name="bid" readonly>
                </div>
              </div>
                 
              <div class="form-group">
                <label class="control-label col-sm-2" for="bookname">Book Name:</label>
                <div class="col-sm-5">
                    <input type="text" class="form-control" id="email" value="<%=books.get(1)%>" name="bname">
                </div>
                </div>
                
                <div class="form-group">
                <label class="control-label col-sm-2" for="authorname">Author Name:</label>
                <div class="col-sm-5">          
                    <input type="text" class="form-control" id="pwd" value="<%=books.get(2)%>" name="bauthor">
                </div>
              </div>
                
                <div class="form-group">
                <label class="control-label col-sm-2" for="authorname">Year:</label>
                <div class="col-sm-5">          
                    <input type="text" class="form-control" id="pwd" value="<%=books.get(3)%>" name="byear">
                </div
              </div><br><br>
                
                <div class="form-group">
                <label class="control-label col-sm-2" for="authorname">Copies:  </label>
                <div class="col-sm-5">          
                    <input type="text" class="form-control" id="pwd" value="<%=books.get(4)%>" name="bcopy">
                </div
              </div><br><br>
                
                <input type="submit" align="center" class="btn btn-danger btn-lg" value="Delete" onclick="form.action='Delete';">
               <input type="submit"  class="btn btn-primary btn-lg"value="Update" onclick="form.action='Updated';">
                 
             </form>
                

            <%
                    }
                }
                if (count == 0) {
            %>
            
                
                    <b>Sorry No books found..</b>
            
            <%            }
            %>
      
      
      

  </div>
</body>
</html>