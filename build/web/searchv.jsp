<%@ page import="java.util.*" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
    <a href="login.jsp">Admin</a>
  </div>
</div>

<div style="padding-left:20px">
  <h1></h1></div>
  <!----------------------------------------------------------------------------->

 <table width="700px" align="center"
        style="border:1px solid #000000;" class="table table-bordered">
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#FA2379">
                    <b>Available Books</b></td>
            </tr>
            <tr style="background-color:lightgrey;">
                <td><b>Id</b></td>
                <td><b>Book Name</b></td>
                <td><b>Author</b></td>
                <td><b>Year</b></td>
            </tr>
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
            <tr style="background-color:<%=color%>;">
                <td><%=books.get(0)%></td>
                <td><%=books.get(1)%></td>
                <td><%=books.get(2)%></td>
                <td><%=books.get(3)%></td>
            </tr>
            <%
                    }
                }
                if (count == 0) {
            %>
            <tr>
                <td colspan=4 align="center"
                    style="background-color:#eeffee"><b>Sorry No books found..</b></td>
            </tr>
            <%            }
            %>
        </table>
  
  
  
  

</div>
</body>
</html>
