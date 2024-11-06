<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University</title>
    <link rel="stylesheet" href="style.css">
    <style>
    	body {
    font-family: Arial, sans-serif;
    margin: 0;
    background-color: #e9ecef;
    display: flex;
    height: 100vh;
}

.sidebar {
    width: 250px;
    background-color: #343a40;
    padding: 20px;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    color: white;
}

.sidebar h2 {
    text-align: center;
    color: #fff;
    margin-bottom: 30px;
}

.sidebar .dropdown {
    margin-bottom: 20px;
}

.sidebar .dropdown a {
    display: block;
    background-color: #007bff;
    color: white;
    padding: 10px;
    margin: 5px 0;
    text-decoration: none;
    text-align: center;
    border-radius: 5px;
    transition: background-color 0.3s ease;
}

.sidebar .dropdown a:hover {
    background-color: #0056b3;
}

.sidebar .dropdown .dropdown-menu {
    display: none;
    padding-left: 10px;
}

.sidebar .dropdown:hover .dropdown-menu {
    display: block;
}

.sidebar .dropdown .dropdown-menu a {
    background-color: #6c757d;
    color: white;
    padding: 8px;
    margin: 2px 0;
    text-decoration: none;
    text-align: left;
    border-radius: 3px;
}

.sidebar .dropdown .dropdown-menu a:hover {
    background-color: #495057;
}

.main-content {
    flex: 1;
    padding: 20px;
}

    	
    
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>University</h2>

        <!-- Admin Dropdown -->
        <div class="dropdown">
            <a>Admin</a>
            <div class="dropdown-menu">
                <a href="AdminLogin">Admin Login</a>
            </div>
        </div>

        <!-- Faculty Dropdown -->
        <div class="dropdown">
            <a>Faculty</a>
            <div class="dropdown-menu">
                <a href="FacultyLogin">Faculty Login</a>
            </div>
        </div>

        <!-- Student Dropdown -->
        <div class="dropdown">
            <a>Student</a>
            <div class="dropdown-menu">
                <a href="studentlogin">Student Login</a>
            </div>
        </div>
    </div>

    
</body>
</html>
