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

    // Determine if we are in edit mode
    boolean edit = request.getParameter("edit") != null && request.getParameter("edit").equals("true");
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
           <!-- Vertical Navbar -->
			<button class="nav-button" onclick="window.location.href='/studenthome'">Dashboard</button>
			<button class="nav-button" onclick="window.location.href='/studentprofile'">Profile</button>
			<button class="nav-button">Courses</button>
			<button class="nav-button">My CGPA</button>
			<button class="nav-button">Attendance</button>
			<button class="nav-button">Logout</button>
        </div>
        <div class="bg-right">
            <h2>Student Details</h2>
            <div class="error-message">
                <c:out value="${error}"></c:out>
            </div>

            <form action="updatestudentdetails" method="post">
                <!-- Track the edit state -->
                <input type="hidden" name="edit" value="<%= edit %>"> 

                <!-- Personal Information Section -->
                <div class="info">
                    <h3>Personal Information</h3>
                    <label for="id">ID:</label>
                    <p id="id"><%= st.getId() %></p>
                    <input type="hidden" name="id" value="<%= st.getId() %>">

                    <label for="name">Name:</label>
                    <p id="name"><%= st.getName() %></p>
                    <input type="hidden" name="name" value="<%= st.getName() %>">
                </div>

                <!-- Additional Information Section -->
                <div class="info">
                    <h3>Additional Information</h3>
                    <label for="fatherName">Father's Name:</label>
                    <input type="text" id="fatherName" name="fatherName"
                           value="<%= st.getFatherName() %>"
                           placeholder="Enter Father's Name" 
                           <%= edit ? "" : "readonly" %>>

                    <label for="motherName">Mother's Name:</label>
                    <input type="text" id="motherName" name="motherName"
                           value="<%= st.getMotherName() %>"
                           placeholder="Enter Mother's Name" 
                           <%= edit ? "" : "readonly" %>>

                    <label for="contact">Contact:</label>
                    <input type="text" id="contact" name="contact"
                           value="<%= st.getContact() %>"
                           placeholder="Enter Contact Number" 
                           <%= edit ? "" : "readonly" %>>

                    <label for="address">Address:</label>
                    <input type="text" id="address" name="address"
                           value="<%= st.getAddress() %>"
                           placeholder="Enter Address" 
                           <%= edit ? "" : "readonly" %>>
                </div>

                <!-- Security Information Section -->
                <div class="info">
                    <h3>Security Information</h3>
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password"
                           value="<%= st.getPassword() %>"
                           placeholder="Enter Password" 
                           <%= edit ? "" : "readonly" %>>

                    <label for="confirm_password">Confirm Password:</label>
                    <input type="password" id="confirm_password" name="confirm_password"
                           placeholder="Confirm your Password" 
                           <%= edit ? "" : "readonly" %>>
                </div>

                <!-- Submit Button for Edit Mode -->
                <% if (edit) { %>
                    <input type="submit" value="Submit">
                <% } %>
            </form>

            <!-- Edit Button when not in Edit Mode -->
            <% if (!edit) { %>
                <form method="get" action="studentprofile">
                    <input type="hidden" name="edit" value="true">
                    <button type="submit">Edit</button>
                </form>
            <% } %>
        </div>
    </div>

</body>
</html>
