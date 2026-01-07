<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Intern Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
    body {
        margin: 0;
        font-family: 'Inter', sans-serif;
        background: #f4f6f8;
    }

    /* Navbar */
    .navbar {
        background: #4e73df;
        color: #fff;
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .navbar h2 {
        margin: 0;
        font-size: 20px;
        font-weight: 600;
    }

    .logout {
        background: #fff;
        color: #4e73df;
        padding: 8px 15px;
        border-radius: 6px;
        text-decoration: none;
        font-size: 14px;
        font-weight: 500;
    }

    .logout:hover {
        background: #e9ecff;
    }

    /* Container */
    .container {
        padding: 30px;
    }

    .welcome {
        font-size: 22px;
        font-weight: 600;
        color: #2c3e50;
        margin-bottom: 25px;
    }

    /* Cards */
    .cards {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
        gap: 20px;
    }

    .card {
        background: #fff;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }

    .card h3 {
        margin: 0 0 10px;
        font-size: 16px;
        font-weight: 500;
        color: #555;
    }

    .card p {
        font-size: 28px;
        font-weight: 600;
        color: #4e73df;
        margin: 0;
    }

    /* Quick Links */
    .links {
        margin-top: 40px;
        display: flex;
        gap: 20px;
        flex-wrap: wrap;
    }

    .links a {
        background: #4e73df;
        color: #fff;
        padding: 12px 20px;
        border-radius: 8px;
        text-decoration: none;
        font-size: 14px;
        font-weight: 500;
    }

    .links a:hover {
        background: #375acf;
    }

</style>
</head>

<body>

<!-- Navbar -->
<div class="navbar">
    <h2>Intern Dashboard</h2>
    <a href="logout" class="logout">Logout</a>
</div>

<!-- Main Content -->
<div class="container">

    <div class="welcome">
        Welcome, Intern 👋
        <!-- later you can use: ${sessionScope.user.firstName} -->
    </div>

    <!-- Stats Cards -->
    <div class="cards">
        <div class="card">
            <h3>Tasks Assigned</h3>
            <p>5</p>
        </div>

        <div class="card">
            <h3>Tasks Completed</h3>
            <p>3</p>
        </div>

        <div class="card">
            <h3>Pending Tasks</h3>
            <p>2</p>
        </div>

        <div class="card">
            <h3>Internship Days</h3>
            <p>45</p>
        </div>
    </div>

    <!-- Quick Actions -->
    <div class="links">
        <a href="viewTasks">View Tasks</a>
        <a href="submitTask">Submit Task</a>
        <a href="profile">My Profile</a>
        <a href="changePassword">Change Password</a>
    </div>

</div>

</body>
</html>
