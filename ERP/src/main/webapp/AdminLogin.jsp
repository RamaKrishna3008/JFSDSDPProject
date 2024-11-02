<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ include file="home.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
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
    <div class="container">
        <div id="toast" class="toast"></div>

        <h2>Admin Login</h2>
        <form action="checkAdminlogin" method="post">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
            <div class="button-group">
                <input type="submit" value="Login">
                <input type="reset" value="Clear">
            </div>
        </form>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const message = "${message}";
            if (message) {
                const toast = document.getElementById("toast");
                toast.textContent = message;
                
                if (message.includes("Registered Successfully")) {
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
