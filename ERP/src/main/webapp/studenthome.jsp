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
<title>Student Home</title>

<link rel="stylesheet" type="text/css" href="./Styles/StudentNavBar.css">
</head>
<body>

	<div class="fullwidth">
		<div class="bg-left">
			<!-- Vertical Navbar -->
			<button class="nav-button" onclick="window.location.href='/studenthome'">Dashboard</button>
			<button class="nav-button" onclick="window.location.href='/studentprofile'">Profile</button>
			<button class="nav-button">Courses</button>
			<button class="nav-button">My CGPA</button>
			<button class="nav-button">Attendance</button>
			<button class="nav-button">Logout</button>
		</div>
		<div class="bg-right">
			<h1>Welcome, <%= st.getId() %></h1>
		</div>
	</div>

</body>
</html>
