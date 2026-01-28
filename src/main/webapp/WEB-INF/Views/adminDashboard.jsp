<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ShipVyom | Admin Dashboard</title>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <style>
        :root {
            --primary: #4f46e5;
            --primary-hover: #4338ca;
            --bg-body: #f8fafc;
            --sidebar-bg: #1e293b;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --card-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05), 0 2px 4px -1px rgba(0, 0, 0, 0.03);
        }

        body {
            background-color: var(--bg-body);
            font-family: 'Plus Jakarta Sans', sans-serif;
            color: var(--text-main);
            display: flex;
            min-height: 100vh;
            margin: 0;
        }

        /* ========== SIDEBAR ========== */
        .sidebar {
            width: 260px;
            background: var(--sidebar-bg);
            color: white;
            padding: 30px 20px;
            flex-shrink: 0;
            position: sticky;
            top: 0;
            height: 100vh;
        }

        .sidebar-brand {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 40px;
            display: flex;
            align-items: center;
            gap: 10px;
            color: white;
        }

        .sidebar a {
            text-decoration: none;
            color: #cbd5e1;
            padding: 12px 15px;
            border-radius: 10px;
            margin-bottom: 8px;
            font-weight: 500;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 12px;
            transition: 0.3s;
        }

        .sidebar a:hover {
            background: #334155;
            color: white;
        }

        .sidebar a.active {
            background: var(--primary);
            color: white;
        }

        /* ========== MAIN CONTENT ========== */
        .main {
            flex: 1;
            display: flex;
            flex-direction: column;
            width: calc(100% - 260px);
        }

        .top-nav {
            background: white;
            padding: 15px 40px;
            border-bottom: 1px solid var(--border);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .content-body {
            padding: 40px;
        }

        /* Hero / Welcome Section */
        .welcome-banner {
            margin-bottom: 35px;
        }

        .welcome-banner h1 {
            font-size: 28px;
            font-weight: 700;
            color: var(--text-main);
        }

        /* Action Cards Grid */
        .cards-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 25px;
        }

        .admin-card {
            background: white;
            border-radius: 16px;
            padding: 32px;
            border: 1px solid var(--border);
            box-shadow: var(--card-shadow);
            transition: all 0.3s ease;
            text-decoration: none !important;
            color: inherit;
            display: flex;
            flex-direction: column;
        }

        .admin-card:hover {
            transform: translateY(-5px);
            border-color: var(--primary);
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1);
        }

        .card-icon {
            width: 50px;
            height: 50px;
            background: #eef2ff;
            color: var(--primary);
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.4rem;
            margin-bottom: 24px;
        }

        .admin-card h5 { 
            font-weight: 700; 
            margin-bottom: 12px; 
            color: var(--text-main);
        }

        .admin-card p { 
            font-size: 14px; 
            color: var(--text-muted); 
            line-height: 1.6; 
            margin-bottom: 20px;
        }

        .card-link {
            font-size: 13px;
            font-weight: 600;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 5px;
            margin-top: auto;
        }

        @media(max-width: 992px) {
            .sidebar { display: none; }
            .main { width: 100%; }
        }
    </style>
</head>

<body>

    <div class="sidebar">
        <div class="sidebar-brand">
            <i class="bi bi-ship"></i> ShipVyom
        </div>
        
        <p style="font-size: 11px; color: #64748b; margin-bottom: 20px; font-weight: 700; letter-spacing: 1px;">ADMIN PANEL</p>
        
        <a href="${pageContext.request.contextPath}/adminDashboard" class="active">
            <i class="bi bi-grid-1x2-fill"></i> Dashboard
        </a>
        <a href="${pageContext.request.contextPath}/addIntern">
            <i class="bi bi-person-plus"></i> Add Intern
        </a>
        <a href="${pageContext.request.contextPath}/addTechnology">
            <i class="bi bi-cpu"></i> Add Technology
        </a>
        <a href="${pageContext.request.contextPath}/internship">
            <i class="bi bi-briefcase"></i>Add Internships
        </a>
    </div>

    <div class="main">
        
        <div class="top-nav">
            <h5 class="fw-bold mb-0">Overview</h5>
            <div class="d-flex align-items-center">
                <div class="text-end me-3">
                    <div class="fw-bold small" style="color: var(--text-main);">${admin.firstName} ${admin.lastName}</div>
                    <div class="text-muted" style="font-size: 11px;">${admin.email}</div>
                </div>
                <div class="bg-light rounded-circle" style="width: 42px; height: 42px; display: flex; align-items: center; justify-content: center; border: 1px solid var(--border);">
                    <i class="bi bi-person-circle fs-5" style="color: var(--primary);"></i>
                </div>
            </div>
        </div>

        <div class="content-body">
            
            <div class="welcome-banner">
                <h1>Welcome back, ${admin.firstName}!</h1>
                <p class="text-muted">Here's what's happening with your internship programs today.</p>
            </div>

            <div class="cards-grid">
                
                <a href="${pageContext.request.contextPath}/addIntern" class="admin-card">
                    <div class="card-icon"><i class="bi bi-people"></i></div>
                    <h5>List Intern</h5>
                    <p>Onboard new talent, manage existing intern profiles, and monitor their progress through the system.</p>
                    <div class="card-link">Manage Users <i class="bi bi-arrow-right"></i></div>
                </a>

                <a href="${pageContext.request.contextPath}/addTechnology" class="admin-card">
                    <div class="card-icon"><i class="bi bi-code-slash"></i></div>
                    <h5>List Technology Stack</h5>
                    <p>Update the core domains and programming languages offered for training and industrial projects.</p>
                    <div class="card-link">View Stack <i class="bi bi-arrow-right"></i></div>
                </a>

                <a href="${pageContext.request.contextPath}/internship" class="admin-card">
                    <div class="card-icon"><i class="bi bi-award"></i></div>
                    <h5>List Internship Programs</h5>
                    <p>Design curriculums, set stipends, and manage live listings on the career portal for students.</p>
                    <div class="card-link">Configure Programs <i class="bi bi-arrow-right"></i></div>
                </a>

            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>