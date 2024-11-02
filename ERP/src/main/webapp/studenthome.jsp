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
<style>
body, html {
	height: 100%;
	margin: 0;
	font-family: Arial, sans-serif;
}

.fullwidth {
	position: relative;
	width: 100%;
	height: 150%;
}

.bg-left {
	background: #000;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	width: 25%;
	color: #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
}

.bg-right {
	background: #f5f5f5;
	position: absolute;
	top: 0;
	bottom: 0;
	right: 0;
	width: 75%; /* Adjusted to take more space */
	padding: 20px; /* Added padding */
}

h2, h3 {
	margin: 20px 0 10px;
}

.info {
	background-color: #fff;
	padding: 15px;
	border-radius: 5px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	margin-bottom: 20px;
}

.info label {
	display: block;
	font-weight: bold;
	margin-bottom: 5px;
}

.info p {
	margin: 0;
	padding: 8px 0;
	border-bottom: 1px solid #ddd; /* Divider for each field */
}

input[type="text"], [type="password"] {
	width: calc(100% - 20px);
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 10px;
}

input[type="submit"] {
	background-color: #555;
	color: white;
	padding: 10px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #000;
}
</style>
</head>
<body>

	<div class="fullwidth">
		<div class="bg-left">
			<!-- Optional content for left side -->
		</div>
		<div class="bg-right">
			<h1>Welcome, <%= st.getId() %></h1>
		</div>
	</div>

</body>
</html>
