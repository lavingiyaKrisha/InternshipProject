<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Intern</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">
<style>
body { font-family: Inter; background: #f4f6f8; }
.container { width: 600px; margin: 40px auto; background: white; padding: 25px; border-radius: 8px; }
input, select, button { width: 100%; padding: 10px; margin-bottom: 12px; }
button { background: #4e73df; color: white; border: none; }
</style>
</head>
<body>

<div class="container">
<h2>Add Intern</h2>

<form action="${pageContext.request.contextPath}/admin/addIntern" method="post">


    <!-- USER -->
    <input type="text" name="firstName" placeholder="First Name" >
    <input type="text" name="lastName" placeholder="Last Name" >
    <input type="email" name="email" placeholder="Email" >
    <input type="password" name="password" placeholder="Password" >

    <!-- INTERN DETAIL -->
    <input type="text" name="collegeName" placeholder="College Name" >
    <input type="text" name="courseInfo" placeholder="Course Info" >
    <input type="number" name="semester" placeholder="Semester" >

    <button type="submit">Add Intern</button>
</form>

</div>
</body>
</html>
