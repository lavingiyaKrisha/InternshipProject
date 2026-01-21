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
* {
    box-sizing: border-box;
    font-family: 'Inter', sans-serif;
}

body {
    margin: 0;
    background: linear-gradient(135deg, #eef2ff, #f8fafc);
}

/* Page Wrapper */
.wrapper {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

/* Card */
.container {
    width: 650px;
    background: #ffffff;
    padding: 35px;
    border-radius: 14px;
    box-shadow: 0 15px 40px rgba(0,0,0,0.08);
}

/* Heading */
.container h2 {
    text-align: center;
    margin-bottom: 25px;
    color: #1f2937;
    font-weight: 600;
}

/* Section title */
.section-title {
    margin: 25px 0 10px;
    font-size: 14px;
    font-weight: 600;
    color: #4e73df;
    text-transform: uppercase;
}

/* Inputs */
input {
    width: 100%;
    padding: 12px 14px;
    margin-bottom: 14px;
    border: 1px solid #d1d5db;
    border-radius: 8px;
    font-size: 14px;
    transition: 0.2s;
}

input:focus {
    outline: none;
    border-color: #4e73df;
    box-shadow: 0 0 0 2px rgba(78,115,223,0.15);
}

/* Button */
button {
    width: 100%;
    padding: 14px;
    margin-top: 10px;
    background: linear-gradient(135deg, #4e73df, #3b5bdb);
    color: #fff;
    border: none;
    border-radius: 10px;
    font-size: 15px;
    font-weight: 600;
    cursor: pointer;
    transition: 0.3s;
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 8px 20px rgba(78,115,223,0.35);
}

/* Back link */
.back-link {
    display: block;
    text-align: center;
    margin-top: 18px;
    text-decoration: none;
    color: #6b7280;
    font-size: 14px;
}

.back-link:hover {
    color: #4e73df;
}
</style>
</head>

<body>

<div class="wrapper">
    <div class="container">

        <h2>Add New Intern</h2>

        <form action="${pageContext.request.contextPath}/admin/addIntern" method="post">

            <!-- USER INFO -->
            <div class="section-title">User Information</div>

            <input type="text" name="firstName" placeholder="First Name" required>
            <input type="text" name="lastName" placeholder="Last Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="password" name="password" placeholder="Password" required>
            <input type="text" name="contactNumber" placeholder="Contact Number" required>

            <!-- INTERN INFO -->
            <div class="section-title">Intern Details</div>

            <input type="text" name="collegeName" placeholder="College Name" required>
            <input type="text" name="courseInfo" placeholder="Course / Department" required>
            <input type="number" name="semester" placeholder="Semester" required>

            <button type="submit">Add Intern</button>
        </form>

        <a href="${pageContext.request.contextPath}/admin" class="back-link">
            ← Back to Dashboard
        </a>

    </div>
</div>

</body>
</html>
