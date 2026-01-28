<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ShipVyom | Manage Technology</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #4f46e5;
            --success: #10b981;
            --success-dark: #059669;
            --bg-body: #f8fafc;
            --sidebar-bg: #1e293b;
            --text-main: #1e293b;
            --text-muted: #64748b;
            --border: #e2e8f0;
        }

        * { box-sizing: border-box; margin: 0; padding: 0; font-family: 'Plus Jakarta Sans', sans-serif; }
        
        body { background-color: var(--bg-body); display: flex; min-height: 100vh; color: var(--text-main); }

        /* Sidebar Navigation */
        .sidebar { width: 260px; background: var(--sidebar-bg); color: white; padding: 30px 20px; flex-shrink: 0; position: sticky; top: 0; height: 100vh; }
        .logo { font-size: 22px; font-weight: 700; margin-bottom: 40px; display: flex; align-items: center; gap: 10px; }
        .nav-link { display: flex; align-items: center; gap: 12px; color: #cbd5e1; text-decoration: none; padding: 12px; border-radius: 8px; transition: 0.3s; margin-bottom: 5px; font-size: 14px; }

        .nav-link:hover:not() { background: #334155; color: white; }

        /* Main Content Area */
        .main-content { flex-grow: 1; padding: 40px; }
        .page-header { margin-bottom: 30px; }

        /* Form Card */
        .card { background: white; border-radius: 16px; padding: 30px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05); margin-bottom: 30px; border: 1px solid var(--border); }
        .form-row { display: grid; grid-template-columns: 1fr 1.5fr 1fr auto; gap: 15px; align-items: flex-end; }
        
        .form-group { display: flex; flex-direction: column; gap: 8px; }
        label { font-size: 13px; font-weight: 600; color: var(--text-muted); }
        
        input, select { padding: 12px; border: 1px solid var(--border); border-radius: 10px; font-size: 14px; background: #fcfdfe; transition: 0.2s; }
        input:focus { outline: none; border-color: var(--success); box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.1); }

        .btn-submit { background: var(--success); color: white; border: none; padding: 12px 24px; border-radius: 10px; font-weight: 600; cursor: pointer; transition: 0.3s; height: 45px; }
        .btn-submit:hover { background: var(--success-dark); transform: translateY(-1px); }

        /* Table Design */
        .table-container { background: white; border-radius: 16px; border: 1px solid var(--border); overflow: hidden; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05); }
        table { width: 100%; border-collapse: collapse; }
        th { background: #f8fafc; padding: 16px; text-align: left; font-size: 12px; font-weight: 700; color: var(--text-muted); text-transform: uppercase; border-bottom: 1px solid var(--border); }
        td { padding: 16px; border-bottom: 1px solid var(--border); font-size: 14px; }

        /* Badges */
        .badge { padding: 6px 12px; border-radius: 20px; font-size: 11px; font-weight: 700; }
        .badge-active { background: #dcfce7; color: #166534; }
        .badge-inactive { background: #fee2e2; color: #991b1b; }

        @media (max-width: 1000px) {
            .form-row { grid-template-columns: 1fr; }
        }
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
    
    <div class="main-content">
        <div class="page-header">
            <h1 style="font-size: 28px;">Technology Stack</h1>
            <p style="color: var(--text-muted); margin-top: 5px;">Define and manage technologies used for internships.</p>
        </div>

        <div class="card">
            <h3 style="margin-bottom: 20px; font-size: 18px; color: var(--text-main);"><i class="fas fa-layer-group" style="color: var(--success); margin-right: 10px;"></i> Add New Technology</h3>
            <form action="${pageContext.request.contextPath}/addTechnology" method="post" class="form-row">
                
                <div class="form-group">
                    <label>Technology Name</label>
                    <input type="text" name="name" placeholder="e.g. Java Spring Boot" required>
                </div>

                <div class="form-group">
                    <label>Description</label>
                    <input type="text" name="description" placeholder="Short description of the stack" required>
                </div>

                <div class="form-group">
                    <label>Status</label>
                    <select name="active" required>
                        <option value="true">Active</option>
                        <option value="false">Inactive</option>
                    </select>
                </div>

                <button type="submit" class="btn-submit">
                    <i class="fas fa-plus" style="margin-right: 5px;"></i> Create
                </button>
            </form>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th style="width: 10%;">ID</th>
                        <th style="width: 25%;">Technology Name</th>
                        <th style="width: 45%;">Description</th>
                        <th style="width: 20%;">Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="tech" items="${technologies}">
                        <tr>
                            <td style="color: var(--text-muted); font-weight: 600;">#${tech.technologyId}</td>
                            <td><strong style="color: var(--primary);">${tech.name}</strong></td>
                            <td style="color: var(--text-muted);">${tech.description}</td>
                            <td>
                                <c:choose>
                                    <c:when test="${tech.active}">
                                        <span class="badge badge-active"><i class="fas fa-check-circle" style="margin-right: 4px;"></i> Active</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge badge-inactive"><i class="fas fa-times-circle" style="margin-right: 4px;"></i> Inactive</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty technologies}">
                        <tr>
                            <td colspan="4" style="text-align: center; padding: 40px; color: var(--text-muted);">
                                No technologies defined yet.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>