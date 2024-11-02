<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Registration</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="container">
        <h2>Faculty Registration</h2>
        <form action="RegisterFaculty" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="contactno">Contact No</label>
            <input type="text" id="contactno" name="contactno" required>

            <div class="button-group">
                <input type="submit" value="Register">
                <input type="reset" value="Clear">
            </div>
        </form>
    </div>
</body>
</html>
