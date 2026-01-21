<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Intern Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
/* RESET */
* {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
}

body {
    font-family: 'Inter', sans-serif;
    background: #f0f4f8;
    display: flex;
    min-height: 100vh;
}

/* SIDEBAR */
.sidebar {
    width: 240px;
    background: linear-gradient(180deg, #4e73df, #1cc88a);
    color: #fff;
    display: flex;
    flex-direction: column;
    padding: 30px 20px;
}

.sidebar h2 {
    font-size: 22px;
    font-weight: 700;
    margin-bottom: 40px;
    text-align: center;
}

.sidebar a {
    text-decoration: none;
    color: #fff;
    padding: 12px 20px;
    border-radius: 8px;
    margin-bottom: 15px;
    font-weight: 500;
    transition: 0.3s;
    display: block;
}

.sidebar a:hover {
    background: rgba(255,255,255,0.2);
}

/* MAIN CONTENT */
.main {
    flex: 1;
    padding: 30px 40px;
}

/* WELCOME */
.welcome {
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 30px;
    color: #1f2937;
}

/* CARDS */
.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
    gap: 25px;
}

.card {
    background: #fff;
    border-radius: 14px;
    padding: 25px;
    box-shadow: 0 12px 25px rgba(0,0,0,0.08);
    transition: 0.3s;
    cursor: pointer;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 35px rgba(0,0,0,0.15);
}

.card h3 {
    font-size: 16px;
    font-weight: 600;
    color: #4a5568;
    margin-bottom: 12px;
}

.card p {
    font-size: 28px;
    font-weight: 700;
    margin: 0;
}

/* CARD COLORS */
.card:nth-child(1) p { color: #4e73df; } /* Tasks Assigned */
.card:nth-child(2) p { color: #1cc88a; } /* Tasks Completed */
.card:nth-child(3) p { color: #f6c23e; } /* Pending Tasks */
.card:nth-child(4) p { color: #e74a3b; } /* Internship Days */

/* RESPONSIVE */
@media (max-width: 900px) {
    body {
        flex-direction: column;
    }
    .sidebar {
        width: 100%;
        flex-direction: row;
        overflow-x: auto;
        padding: 15px;
    }
    .sidebar a {
        margin: 0 10px 0 0;
        white-space: nowrap;
    }
    .main {
        padding: 20px;
    }
    .cards {
        grid-template-columns: 1fr;
    }
}
</style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <h2>Intern Dashboard</h2>
    <a href="dashboard">Home</a>
    <a href="viewTasks">View Tasks</a>
    <a href="submitTask">Submit Task</a>
    <a href="profile">My Profile</a>
    <a href="changePassword">Change Password</a>
    <a href="logout">Logout</a>
</div>

<!-- Main Content -->
<div class="main">

    <div class="welcome">
        Welcome, Intern 👋
        <!-- Later: ${sessionScope.user.firstName} -->
    </div>

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

</div>

</body>
</html>
