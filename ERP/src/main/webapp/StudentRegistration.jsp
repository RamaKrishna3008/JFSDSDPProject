<!DOCTYPE html>
<%@ include file="AdminHome.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <link rel="stylesheet" href="style.css">

</head>
<body>
    <div class="container">
        <h2>Student Registration</h2>
        <form action="RegisterStudent" method="post">
        
        <label for="idno">Id No</label>
            <input type="number" id="idno" name="idno" required>
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="fathername">Father Name</label>
            <input type="text" id="fathername" name="fathername" required>

            <label for="mothername">Mother Name</label>
            <input type="text" id="mothername" name="mothername" required>


            <label for="contactno">Contact No</label>
            <input type="number" id="contactno" name="contactno" pattern="[6-9]{1}[0-9]{9}"  required>
 			<small>Format: 10 digits starting with 6, 7, 8, or 9</small><br>
    
            
            
            
            <label for="address">Address</label>
			<textarea rows="3" cols="30" name="address"></textarea>
			
			 <label for="password">Password</label>
            <input type="text" id="password" name="password" value="erp123" readonly="readonly" >
			
            <div class="button-group">
                <input type="submit" value="Register">
                <input type="reset" value="Clear">
            </div>
        </form>
    </div>
</body>
</html>
