<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.RegisteredAccount"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Home</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet" href="css/style.css" />
</head>
<body class="text-bg-dark">


	<%
	RegisteredAccount ra = (RegisteredAccount) request.getAttribute("AccountInfo");
	%>

	<div class="container">
		<div class="row align-items-center justify-content-center my-5">
			<div class="col-12 col-md-6 text-center mb-3">
				<img class="img-fluid" alt="training" src="https://static.invozone.com/uploads/2020/06/How-to-Build-a-Successful-E-learning-Platform.png">
			</div>
			<div class="col-12 col-md-6 text-center">
				<h1 class="mb-3">Welcome <%=ra.getName()%></h1>
				<div class="row">
					<div class="col-6">
						<a href="<%=request.getContextPath()%>/enrolledCourse?email=<%=ra.getEmail()%>"
							class="btn btn-dark w-100 mb-3 mb-md-0">View Your Registered Courses</a>
					</div>
					<div class="col-6">
						<a href="<%=request.getContextPath()%>/new?name=<%=ra.getName()%>&email=<%=ra.getEmail()%>"
							class="btn btn-dark w-100">Register New Course</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script src="index.js"></script>
</body>
</html>
