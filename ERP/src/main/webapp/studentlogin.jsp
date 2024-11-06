<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University ERP Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif; /* Set a professional font */
        }
        .fullwidth {
            position: relative;
            width: 100%;
            height: 100%; 
        }
        .bg-left {
            background: #000; 
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            width: 50%;
            color: #fff; /* White text color for visibility */
            display: flex;
            flex-direction: column;
            justify-content: center; /* Center vertically */
            align-items: center; /* Center horizontally */
            text-align: center; /* Center text */
        }
        .bg-right {
            background: #f5f5f5; /* Light gray background for a softer look */
            position: absolute;
            top: 0;
            bottom: 0;
            right: 0;
            width: 50%;
            display: flex; 
            justify-content: center; 
            align-items: center; 
        }
        .login-form {
            width: 405px; /* Slightly wider form */
            padding: 40px; /* Reduced padding for better spacing */
            background-color: #fff;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            z-index: 2;
            transition: box-shadow 0.3s; /* Add transition effect */
        }
        .login-form:hover {
            box-shadow: 0 6px 30px rgba(0, 0, 0, 0.15); /* Shadow effect on hover */
        }
        .login-form h2 {
            margin-bottom: 20px;
            font-size: 28px; /* Increased font size */
            color: #333;
            text-align: center; /* Centered heading */
        }
        .login-form label {
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
            color: #666; /* Softer color for labels */
        }
        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 12px; /* Slightly more padding */
            margin-bottom: 15px;
            border: 1px solid #ccc; /* Light border color */
            border-radius: 5px; /* Rounded edges */
            font-size: 16px; /* Increased font size */
            transition: border 0.3s; /* Transition effect for border */
        }
        .login-form input[type="text"]:focus,
        .login-form input[type="password"]:focus {
            border-color: #007BFF; /* Change border color on focus */
            outline: none; /* Remove default outline */
        }
        .login-form input[type="submit"] {
            width: 102%; /* Adjusted to 100% */
            padding: 10px;
            background-color: #555; /* Bootstrap primary color */
            color: #fff;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s; /* Transition effect for button */
        }
        .login-form input[type="submit"]:hover {
            background-color: #000; /* Darker black on hover */
        }
        .icon {
            width: 24px; /* Icon width */
            vertical-align: middle; /* Align icon with text */
            margin-right: 10px; /* Space between icon and text */
        }
        .university-description {
            font-size: 24px; /* Font size for description */
            line-height: 1.5; /* Line height for readability */
            max-width: 80%; /* Max width for better spacing */
        }
         .error-message {
            color: red;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="fullwidth">
        <div class="bg-left">    
            <h1>University ERP</h1>
            <p class="university-description">
                Welcome to the University ERP System. Manage your courses, track your progress, and access all university resources efficiently. Our ERP system is designed to streamline your academic journey and provide seamless access to essential services.
            </p>
        </div>
        <div class="bg-right">    
            <div class="login-form">
                <h2><i class="fas fa-user icon"></i>Login</h2>
                <form action="checkstudentlogin" method="post">
                    <input type="text" id="id" name="id" placeholder="ID" required>
                    <input type="password" id="password" name="password" placeholder="Password" required>
                    <input type="submit" value="Login">
                    <div class="error-message"><c:out value="${error}"></c:out></div>
                    
                     
                </form>
            </div>
        </div>
    </div>
</body>
</html>
