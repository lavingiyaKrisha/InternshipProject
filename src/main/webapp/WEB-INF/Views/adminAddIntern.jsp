<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ShipVyom | Add Intern</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #4f46e5;
            --primary-hover: #4338ca;
            --bg-body: #f1f5f9;
            --sidebar-bg: #1e293b;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --card-bg: #ffffff;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Plus Jakarta Sans', sans-serif;
        }

        body {
            background-color: var(--bg-body);
            display: flex;
            min-height: 100vh;
        }

        /* Sidebar Navigation Mockup Style */
        .sidebar {
            width: 260px;
            background: var(--sidebar-bg);
            color: white;
            padding: 30px 20px;
            flex-shrink: 0;
        }

        .logo {
            font-size: 22px;
            font-weight: 700;
            margin-bottom: 40px;
            color: #fff;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        /* Main Content Area */
        .main-content {
            flex-grow: 1;
            padding: 40px;
            max-width: 1200px;
        }

        .header-section {
            margin-bottom: 30px;
        }

        .header-section h1 {
            font-size: 28px;
            color: var(--text-main);
            margin-bottom: 8px;
        }

        .header-section p {
            color: var(--text-muted);
        }

        /* Form Card */
        .form-card {
            background: var(--card-bg);
            border-radius: 16px;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            padding: 40px;
        }

        .form-grid {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 24px;
        }

        .section-header {
            grid-column: span 2;
            padding-bottom: 10px;
            border-bottom: 1px solid #e2e8f0;
            margin-top: 20px;
            margin-bottom: 10px;
            font-size: 16px;
            font-weight: 600;
            color: var(--primary);
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        label {
            font-size: 14px;
            font-weight: 500;
            color: var(--text-main);
        }

        input {
            padding: 12px 16px;
            border: 1px solid #cbd5e1;
            border-radius: 10px;
            font-size: 14px;
            background: #f8fafc;
            transition: all 0.2s;
        }

        input:focus {
            outline: none;
            border-color: var(--primary);
            background: #fff;
            box-shadow: 0 0 0 4px rgba(79, 70, 229, 0.1);
        }

        /* Submit Button Area */
        .action-area {
            grid-column: span 2;
            margin-top: 30px;
            display: flex;
            gap: 15px;
        }

        .btn-submit {
            background: var(--primary);
            color: white;
            border: none;
            padding: 14px 28px;
            border-radius: 10px;
            font-weight: 600;
            cursor: pointer;
            transition: 0.3s;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .btn-submit:hover {
            background: var(--primary-hover);
            transform: translateY(-1px);
        }

        .btn-cancel {
            background: #fff;
            color: var(--text-muted);
            border: 1px solid #cbd5e1;
            padding: 14px 28px;
            border-radius: 10px;
            text-decoration: none;
            font-weight: 600;
            text-align: center;
        }

        .btn-cancel:hover {
            background: #f1f5f9;
        }

        @media (max-width: 900px) {
            .form-grid { grid-template-columns: 1fr; }
            .section-header, .action-area { grid-column: span 1; }
            .sidebar { display: none; }
        }
          /* Sidebar Navigation */
        .sidebar { width: 260px; background: var(--sidebar-bg); color: white; padding: 30px 20px; flex-shrink: 0; position: sticky; top: 0; height: 100vh; }
        .logo { font-size: 22px; font-weight: 700; margin-bottom: 40px; display: flex; align-items: center; gap: 10px; }
        .nav-link { display: flex; align-items: center; gap: 12px; color: #cbd5e1; text-decoration: none; padding: 12px; border-radius: 8px; transition: 0.3s; margin-bottom: 5px; font-size: 14px; }
        
        .nav-link:hover:not(.active) { background: #334155; color: white; }
    </style>
</head>

<body>

    
    
     <div class="sidebar">
        <div class="logo"><i class="fas fa-ship"></i> ShipVyom</div>
        <p style="font-size: 11px; color: #64748b; margin-bottom: 20px; font-weight: 700; letter-spacing: 1px;">MANAGEMENT</p>
        <a href="${pageContext.request.contextPath}/adminDashboard" class="nav-link"><i class="fas fa-th-large"></i> Dashboard</a>
        <a href="${pageContext.request.contextPath}/internship" class="nav-link"><i class="fas fa-briefcase"></i> Add Internships</a>
        <a href="${pageContext.request.contextPath}/addTechnology" class="nav-link active"><i class="fas fa-code"></i>Add Technologies</a>
        <a href="${pageContext.request.contextPath}/addIntern" class="nav-link"><i class="fas fa-user-plus"></i> Add Interns</a>
    </div>
        <p style="opacity: 0.5; font-size: 12px; margin-bottom: 20px;">ADMIN PANEL</p>
        <div style="display: flex; flex-direction: column; gap: 15px;">
            <a href="${pageContext.request.contextPath}/adminDashboard" style="color: white; text-decoration: none; font-size: 14px;">
                <i class="fas fa-th-large" style="margin-right: 10px;"></i> Dashboard
            </a>
            <a href="#" style="color: var(--primary); text-decoration: none; font-size: 14px; font-weight: 600;">
                <i class="fas fa-user-plus" style="margin-right: 10px;"></i> Add Intern
            </a>
        </div>
    </div>

    <div class="main-content">
        <div class="header-section">
            <h1>Register New Intern</h1>
            <p>Create a new profile for a selected candidate into the career portal.</p>
        </div>

        <div class="form-card">
            <form action="${pageContext.request.contextPath}/addIntern" method="post">
                
                <div class="form-grid">
                    <div class="section-header">
                        <i class="fas fa-user-circle"></i> Personal Information
                    </div>

                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" name="firstName" placeholder="John" required>
                    </div>

                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" name="lastName" placeholder="Doe" required>
                    </div>

                    <div class="form-group">
                        <label>Email Address</label>
                        <input type="email" name="email" placeholder="john@example.com" required>
                    </div>

                    <div class="form-group">
                        <label>Contact Number</label>
                        <input type="text" name="contactNum" placeholder="+91 00000 00000" required>
                    </div>

                    <div class="form-group">
                        <label>Set Password</label>
                        <input type="password" name="password" placeholder="••••••••" required>
                    </div>
                    
                    <div class="form-group">
					    <label>Gender</label>
					    <select name="gender" required>
					        <option value="" disabled selected>Select Gender</option>
					        <option value="Male">Male</option>
					        <option value="Female">Female</option>
					        <option value="Other">Other</option>
					    </select>
					</div>

                    <div class="section-header">
                        <i class="fas fa-graduation-cap"></i> Academic Details
                    </div>

                    <div class="form-group" style="grid-column: span 2;">
                        <label>College/University Name</label>
                        <input type="text" name="collegeName" placeholder="GLS University" required>
                    </div>

                    <div class="form-group">
                        <label>Course / Department</label>
                        <input type="text" name="courseInfo" placeholder="B.Tech Computer Science" required>
                    </div>

                    <div class="form-group">
                        <label>Current Semester</label>
                        <input type="number" name="semester" placeholder="6" required>
                    </div>

                    <div class="action-area">
                        <button type="submit" class="btn-submit">
                            <i class="fas fa-check"></i> Register Intern
                        </button>
                        <a href="${pageContext.request.contextPath}/adminDashboard" class="btn-cancel">Cancel</a>
                    </div>
                </div>
            </form>
        </div>
    </div>

</body>
</html>