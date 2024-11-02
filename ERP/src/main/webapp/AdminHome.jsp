<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>University</title>
    <link rel="stylesheet" href="style.css">
    <style>
    body {
            display: flex;
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }
        .toast {
            visibility: hidden;
            min-width: 250px;
            background-color: #333;
            color: #fff;
            text-align: center;
            border-radius: 5px;
            padding: 16px;
            position: fixed;
            z-index: 1;
            top: 20px;
            right: 20px;
            font-size: 17px;
        }
        .toast.show {
            visibility: visible;
            animation: fadein 0.5s, fadeout 0.5s 2.5s;
        }
        .toast.success {
            background-color: green;
        }
        .toast.failure {
            background-color: red;
        }
        @keyframes fadein {
            from {top: 0; opacity: 0;}
            to {top: 20px; opacity: 1;}
        }
        @keyframes fadeout {
            from {top: 20px; opacity: 1;}
            to {top: 0; opacity: 0;}
        }
    </style>
</head>
<body>
    <div class="navbar">
        <div class="navbar-item">
        <h2>University</h2>
            <a>Student</a>
            <div class="dropdown">
                <a href="#">Add Student</a>
                <a href="#">View Student</a>
                <a href="#">Update Student</a>
            </div>
        </div>
        <div class="navbar-item">
            <a>Faculty</a>
            <div class="dropdown">
            	<a href="#">Add Faculty</a>
                <a href="#">View Faculty</a>
                <a href="#">Update Faculty</a>
            </div>
        </div>
        <div class="navbar-item">
        <a href="#">Logout</a>
        </div>
    </div>
     <script>
        document.addEventListener("DOMContentLoaded", function() {
            const message = "${message}";
            if (message) {
                const toast = document.getElementById("toast");
                toast.textContent = message;
                
                if (message.includes("Login Successful")) {
                    toast.classList.add("show", "success");
                } else {
                    toast.classList.add("show", "failure");
                }
                
                setTimeout(() => {
                    toast.classList.remove("show", "success", "failure");
                }, 3000);
            }
        });
    </script>
</body>
</html>
