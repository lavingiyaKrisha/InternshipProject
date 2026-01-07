<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
body {
    font-family: 'Inter', sans-serif;
    margin: 0;
    background: #f4f6f8;
}
header {
    background: #4e73df;
    color: #fff;
    padding: 15px;
    text-align: center;
    font-size: 22px;
    font-weight: 600;
}
nav {
    display: flex;
    justify-content: center;
    gap: 20px;
    padding: 15px;
    background: #fff;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
nav a {
    text-decoration: none;
    color: #4e73df;
    font-weight: 500;
}
nav a:hover {
    text-decoration: underline;
}
section {
    padding: 30px;
    text-align: center;
}
.card {
    display: inline-block;
    background: #fff;
    width: 250px;
    padding: 20px;
    margin: 15px;
    border-radius: 8px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.08);
    cursor: pointer;
    transition: 0.3s;
}
.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 8px 20px rgba(0,0,0,0.12);
}
.card h3 {
    margin: 0;
    color: #333;
}
</style>
</head>
<body>
<header>Admin Dashboard</header>
<nav>
    <a href="admin/addUser">Add User</a>
    <a href="admin/technology">Manage Technology</a>
    <a href="admin/internship">Manage Internship</a>
</nav>
<section>
    <div class="card">
        <h3>Users</h3>
        <p>Manage interns, faculty, admin & management</p>
    </div>
    <div class="card">
        <h3>Technology</h3>
        <p>CRUD operations for technologies</p>
    </div>
    <div class="card">
        <h3>Internships</h3>
        <p>Manage internships & links to technologies</p>
    </div>
</section>
</body>
</html>
