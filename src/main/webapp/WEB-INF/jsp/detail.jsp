<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.spring.model.Employee" %>
<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
  <title>Employee</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body >

<nav class="navbar navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand">
    
    <button class=" navbar-text btn btn-outline-success" type="button"><a href="/springJdbcTemplate/register">Add User</a></button>
    </a>
    <button class=" navbar-text btn btn-outline-success" type="button"><a href="/springJdbcTemplate/show">All Employee</a></button>
    <form class="d-flex" method="get" action="/springJdbcTemplate/search">
      <input class="form-control me-2" type="search" name="sname" id="sname" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success" type="submit">Search</button>
    </form>
  </div>
</nav>

	
	<hr>
	<label> ${message} </label>
	 
	 	<div class="container container-sm " style="width:100%" id="">
	 	
			  <table class="table table-hover">
				  <thead>
				    <tr>
				      <th scope="col">ID</th>
				      <th scope="col">NAME</th>
				      <th scope="col">DESIGNATION</th>
				      <th scope="col">Salary</th>
				      <th scope="col"></th>
				      <th scope="col"></th>
				    </tr>
				  </thead>
				  <c:forEach var="emp" items="${data}" varStatus="status">
				  <tbody>
				  <form method="post" action="/springJdbcTemplate/update">
				    <tr>
				      <th > <input type="text" name="" value="${emp.empId}" disabled="disabled"> </th>
				      <td> <input type="text" id="${emp.empId}" name="empName" value="${emp.empName}"></td>
				      <td><input type="text" name="designation" value="${emp.designation}"></td>
				      <td><input type="text" id="salary${emp.empId}" name="salary" value="${emp.salary}"></td>
				     <td><a type="button" href="" class="btn btn-primary" onclick="func(${emp.empId});"  data-bs-toggle="modal" data-bs-target="#exampleModal">Slip</a></td>
				      
<%-- 				      <td><a type="button" href="" class="btn btn-primary" id="slip" value="${emp.empId}" data-bs-toggle="modal" data-bs-target="#exampleModal">Slip</a></td>
 --%>				      <td><a type="button" href="/springJdbcTemplate/delete/${emp.empId}" class="btn btn-primary">Delete</a></td>
				      
				      
				      		<input type="hidden" name="empId" value="${emp.empId}">
				      		<%-- <input type="hidden" name="empName" value="${emp.empName}">
				      		<input type="hidden" name="designation" value="${emp.designation}">
				      		<input type="hidden" name="salary" value="${emp.salary}"> --%>
				      	<td><button type="submit" class="btn btn-primary">Update</button></td>
					 
				    </tr>
				    <tr>
				    </form>
				  </tbody>
				  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Salary Slip</h5>
					        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
					      </div>
					      <div class="modal-body">
					       <div class="card text-center">
							  <div class="card-header" >Name:<b> Mr.<span id="ename"></span></b></div>
							  <div class="card-body">
							  <h5 class="card-title">Basic: <span id="basic"></span></h5>
							    <h5 class="card-title" >House: <span id="house"></span></h5>
							    <h5 class="card-title" >Utility: <span id="utility"></span></h5>
							    <h5 class="card-title" >Transport: <span id="transport"></span></h5>
							    <h5 class="card-title" >Medical: <span id="medical"></span></h5>
							    
							  </div>
							  <div class="card-footer text-muted" >
							    Total: <span id="total"></span>
							  </div>
							</div>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					        <button type="button" class="btn btn-primary">PRINT</button>
					      </div>
					    </div>
					  </div>
					</div>
	
				  </c:forEach> 
				</table>
		</div>



</body>

<script>
		function func(id) {
		 //alert($("#"+id).val());
			//alert($("#salary"+id).val());
			var n=$("#"+id).val();
			var s=$("#salary"+id).val();
			var h=2700;
			var u=600,t=400,me=300;
			var tot=(h+u+t+me)+parseInt(s);
			$("#ename").text(n);
			$("#basic").text(s);
			$("#house").text(h);
			$("#utility").text(u);
			$("#transport").text(t);
			$("#medical").text(me);
			$("#total").text(tot);
			$('#exampleModal').modal('toggle');
			$('#exampleModal').modal('show');
			//$('#exampleModal').modal('hide');
		}

</script>  
</html>