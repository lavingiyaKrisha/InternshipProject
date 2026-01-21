<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<style>
:root {
    --primary: #4f46e5;
    --primary-dark: #4338ca;
    --bg: #f5f7fb;
    --card: #ffffff;
    --text-dark: #1f2937;
    --text-light: #6b7280;
    --border: #e5e7eb;
}

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Inter', sans-serif;
}

body {
    background: var(--bg);
    display: flex;
}

/* ========== SIDEBAR ========== */
.sidebar {
    width: 240px;
    background: linear-gradient(180deg, var(--primary), var(--primary-dark));
    min-height: 100vh;
    padding: 25px 20px;
    color: #fff;
}

.sidebar h2 {
    font-size: 22px;
    font-weight: 700;
    margin-bottom: 40px;
}

.sidebar a {
    display: block;
    text-decoration: none;
    color: #e0e7ff;
    padding: 12px 15px;
    border-radius: 8px;
    margin-bottom: 10px;
    font-weight: 500;
    transition: 0.3s;
}

.sidebar a:hover {
    background: rgba(255,255,255,0.15);
    color: #fff;
}

/* ========== MAIN CONTENT ========== */
.main {
    flex: 1;
    padding: 30px;
}

/* Header */
.topbar {
    background: var(--card);
    padding: 18px 25px;
    border-radius: 12px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.05);
    margin-bottom: 30px;
}

.topbar h1 {
    font-size: 24px;
    color: var(--text-dark);
}

/* Cards Section */
.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 25px;
}

.card {
    background: var(--card);
    border-radius: 14px;
    padding: 25px;
    box-shadow: 0 8px 20px rgba(0,0,0,0.06);
    transition: 0.3s;
    border: 1px solid var(--border);
}

.card:hover {
    transform: translateY(-6px);
    box-shadow: 0 12px 28px rgba(0,0,0,0.10);
}

.card .icon {
    width: 50px;
    height: 50px;
    background: #eef2ff;
    color: var(--primary);
    display: flex;
    align-items: center;
    justify-content: center;
    border-radius: 12px;
    font-size: 22px;
    margin-bottom: 15px;
}

.card h3 {
    font-size: 18px;
    color: var(--text-dark);
    margin-bottom: 8px;
}

.card p {
    font-size: 14px;
    color: var(--text-light);
    line-height: 1.5;
}

/* Clickable Cards */
.card a {
    text-decoration: none;
    color: inherit;
    display: block;
}

/* Responsive */
@media(max-width: 768px) {
    .sidebar {
        display: none;
    }
}
</style>
</head>

<body>

<!-- ========== SIDEBAR ========== -->
<div class="sidebar">
    <h2>Admin Panel</h2>
    <a href="${pageContext.request.contextPath}/admin">Dashboard</a>
    <a href="${pageContext.request.contextPath}/admin/addIntern">Add Intern</a>
    <a href="${pageContext.request.contextPath}/admin/addTechnology">Technology</a>
    <a href="${pageContext.request.contextPath}/admin/internship">Internships</a>
</div>

<!-- ========== MAIN CONTENT ========== -->
<div class="main">

    <div class="topbar">
        <h1>Welcome, Admin 👋</h1>
    </div>

    <div class="cards">

        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/addIntern">
                <div class="icon">👤</div>
                <h3>Intern Management</h3>
                <p>Add and manage interns, assign details and monitor progress.</p>
            </a>
        </div>

        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/addTechnology">
                <div class="icon">💻</div>
                <h3>Technology Stack</h3>
                <p>Manage technologies offered in internships and training.</p>
            </a>
        </div>

        <div class="card">
            <a href="${pageContext.request.contextPath}/admin/internship">
                <div class="icon">🎓</div>
                <h3>Internships</h3>
                <p>Create, update and map internships with technologies.</p>
            </a>
        </div>

    </div>

</div>

</body>
</html>
