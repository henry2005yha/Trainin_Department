<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="com.trainingprogram.model.CourseRegister"%>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Training Department | Thanks</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css
    " />
</head>
<body class="text-bg-dark">

	<div class="container animate__animated animate__fadeIn animate__slow">
		<div class="row align-items-center" style="min-height: 80vh">
			<div class="col">
				<div class="text-center d-flex flex-column gap-5">
					<%
					CourseRegister userInfo = (CourseRegister) request.getAttribute("Course");
					%>
					<h1 class="display-5 fw-bold text-success">
						Thanks for joining us
						<%-- <br> <span style="text-decoration-style: wavy;"><%= userInfo.getCourseName()%></span> --%>
					</h1>
					<p class="">
						<span class="fs-3">Here is the summary of the course you
							have chosen</span> <br /> <span class="fs-4"> We also sent you
							the mail to <%=userInfo.getEmailId()%>
						</span>
					</p>

					<div class="rounded p-3 overflow-hidden">
						<table class="table" style="color: white;">
							<tr>
								<th>Name</th>
								<th>Email</th>
								<th>Selected Course</th>
								<th>Schedule</th>
								<th>Cost</th>
							</tr>

							<tr>
								<td><%=userInfo.getUserName()%></td>
								<td><%=userInfo.getEmailId()%></td>
								<td><%=userInfo.getCourseName()%></td>
								<td><%=userInfo.getTime()%></td>
								<td><%=userInfo.getPrice()%></td>
							</tr>

						</table>
					</div>

					<div>
						<button class="btn btn-outline-light rounded-pill p-3 mx-2">Register
							Another course</button>
						<button class="btn btn-outline-light rounded-pill p-3 mx-2"
							onclick="goBack()">Go Back to Home Page</button>

					</div>
					<div></div>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js
    "></script>
	<script src="index.js"></script>
	<script type="text/javascript">
		const backBtn = document.querySelector("button");
		btn.addEventListener("click", function() {
			history.back(2);
		})

		function goBack() {
			window.history.go(-2);
		}
	</script>
</body>
</html>
