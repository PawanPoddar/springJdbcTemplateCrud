<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<nav class="navbar navbar-dark bg-dark">
  <div class="container-fluid">
    
    
    <button class="  btn btn-outline-success" type="button"><a href="/springJdbcTemplate/register">Add User</a></button>
    
    <button class=" navbar-text btn btn-outline-success" type="button"><a href="/springJdbcTemplate/show">All Employee</a></button>
  </div>
</nav>
<body>
	<hr>
	<label> ${alert} </label>
	 <form method="post" action ="/springJdbcTemplate/store">
	 <div class="card">
	 	<div class="container" style="margin-right: 100px;">
			  <div class="mb-3">
			    <label for="id" class="form-label">ID</label>
			    <input type="text" class="form-control" id="empId" name="empId" aria-describedby="emailHelp">
			  </div>
			  <div class="mb-3">
			    <label for="name" class="form-label">Employee Name</label>
			    <input type="text" class="form-control" id="empName" name="empName">
			  </div>
			  <div class="mb-3">
			    <label for="age" class="form-label">Designation</label>
			    <input type="text" class="form-control" id="designation" name="designation">
			  </div>
			  <div class="mb-3">
			    <label for="age" class="form-label">Salary</label>
			    <input type="text" class="form-control" id="salary" name="salary">
			  </div>
			  
			  <button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</div>
	</form>
	
</body>
</html>