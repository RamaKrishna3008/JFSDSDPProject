<%@ page import="com.klef.jfsd.sdp.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%
Student st = (Student) session.getAttribute("student");
if (st == null) {
    response.sendRedirect("stsessionexpiry");
    return;
}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>
<link rel="stylesheet" type="text/css" href="./Styles/StudentNavBar.css">
</head>
<body>

	<div class="fullwidth">
		<div class="bg-left">
			<!-- Optional content for left side -->
		</div>
		<div class="bg-right">
			<h2>Student Details</h2>
			<div class="error-message">
				<c:out value="${error}"></c:out>
			</div>

			<form action="updatestudentdetails" method="post">
				<!-- Add your action URL here -->
				<div class="info">
					<h3>Personal Information</h3>
					<label for="id">ID:</label>
					<p id="id"><%= st.getId() %></p>
					<input type="hidden" name="id" value="<%= st.getId() %>">
					<!-- Hidden field for ID -->
					<label for="name">Name:</label>
					<p id="name"><%= st.getName() %></p>
					<input type="hidden" name="name" value="<%= st.getName() %>">
					<!-- Hidden field for Name -->
				</div>
				<div class="info">
					<h3>Additional Information</h3>
					<label for="fatherName">Father's Name:</label> <input type="text"
						id="fatherName" name="fatherName"
						placeholder="Enter Father's Name" required> <label
						for="motherName">Mother's Name:</label> <input type="text"
						id="motherName" name="motherName"
						placeholder="Enter Mother's Name" required> <label
						for="contact">Contact:</label> <input type="text" id="contact"
						name="contact" placeholder="Enter Contact Number" required>
					<label for="address">Address:</label> <input type="text"
						id="address" name="address" placeholder="Enter Address" required>
				</div>
				<div class="info">
					<h3>Security Information</h3>
					<label for="password">Password:</label> <input type="text"
						id="password" name="password" placeholder="Enter Password"
						required> <label for="Confirm_Password">Confirm
						Password:</label> <input type="password" id="confirm_password"
						name="confirm_password" placeholder="Confirm your Password"
						required>

				</div>
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>

</body>
</html>
