<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ShipVyom | Manage Internships</title>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        :root {
            --primary: #4f46e5;
            --primary-light: #eef2ff;
            --success: #10b981;
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
        
        .nav-link:hover:not(.active) { background: #334155; color: white; }

        /* Main Content Area */
        .main-content { flex-grow: 1; padding: 40px; width: calc(100% - 260px); }
        .page-header { margin-bottom: 30px; display: flex; justify-content: space-between; align-items: flex-end; }
        
        /* Form Card */
        .card { background: white; border-radius: 16px; padding: 30px; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05); margin-bottom: 30px; border: 1px solid var(--border); }
        .form-grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 20px; }
        .form-group { display: flex; flex-direction: column; gap: 8px; }
        .form-group.full-width { grid-column: span 3; }
        
        label { font-size: 13px; font-weight: 600; color: var(--text-muted); }
        input, select { padding: 12px; border: 1px solid var(--border); border-radius: 10px; font-size: 14px; background: #fcfdfe; transition: 0.2s; }
        input:focus { outline: none; border-color: var(--primary); box-shadow: 0 0 0 3px rgba(79, 70, 229, 0.1); }

        .checkbox-row { grid-column: span 3; display: flex; gap: 30px; padding: 10px 0; }
        .checkbox-group { display: flex; align-items: center; gap: 8px; font-size: 14px; font-weight: 500; cursor: pointer; }
        .checkbox-group input { width: 18px; height: 18px; cursor: pointer; }

        .btn-add { background: var(--primary); color: white; border: none; padding: 14px; border-radius: 10px; font-weight: 600; cursor: pointer; grid-column: span 3; margin-top: 10px; transition: 0.3s; font-size: 15px; }
        .btn-add:hover { background: #4338ca; transform: translateY(-1px); box-shadow: 0 10px 15px -3px rgba(79, 70, 229, 0.3); }

        /* Table Design & Sizing */
        .table-container { background: white; border-radius: 16px; border: 1px solid var(--border); overflow-x: auto; box-shadow: 0 4px 6px -1px rgba(0,0,0,0.05); }
        table { width: 100%; border-collapse: collapse; min-width: 1000px; }
        th { background: #f8fafc; padding: 16px; text-align: left; font-size: 12px; font-weight: 700; color: var(--text-muted); text-transform: uppercase; border-bottom: 1px solid var(--border); letter-spacing: 0.5px; }
        td { padding: 16px; border-bottom: 1px solid var(--border); font-size: 14px; vertical-align: middle; }
        
        /* Specific Column Widths */
        th:nth-child(1), td:nth-child(1) { width: 25%; } /* Details */
        th:nth-child(2), td:nth-child(2) { width: 25%; } /* Description */
        th:nth-child(3), td:nth-child(3) { width: 18%; } /* Contact */
        th:nth-child(4), td:nth-child(4) { width: 17%; } /* Financials */
        th:nth-child(5), td:nth-child(5) { width: 15%; } /* Status */

        /* Badges & Text Utilities */
        .badge { padding: 6px 12px; border-radius: 20px; font-size: 11px; font-weight: 700; display: inline-flex; align-items: center; gap: 5px; }
        .badge-active { background: #dcfce7; color: #166534; }
        .badge-inactive { background: #fee2e2; color: #991b1b; }
        .badge-tech { background: var(--primary-light); color: var(--primary); margin-bottom: 8px; }
        
        .desc-truncate { font-size: 13px; color: var(--text-muted); line-height: 1.5; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical; overflow: hidden; }

        @media (max-width: 1200px) {
            .form-grid { grid-template-columns: 1fr 1fr; }
            .form-group.full-width, .checkbox-row, .btn-add { grid-column: span 2; }
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
            <div>
                <h1 style="font-size: 28px;">Internship Portal</h1>
                <p style="color: var(--text-muted); margin-top: 5px;">Post new opportunities and manage existing listings.</p>
            </div>
        </div>

        <div class="card">
            <h3 style="margin-bottom: 20px; font-size: 18px; color: var(--text-main); display: flex; align-items: center; gap: 10px;">
                <i class="fas fa-plus-circle" style="color: var(--primary)"></i> Create New Listing
            </h3>
            <form action="${pageContext.request.contextPath}/addInternship" method="post" class="form-grid">
                
                <div class="form-group">
                    <label>Internship Title</label>
                    <input type="text" name="title" placeholder="e.g. Full Stack Developer" required>
                </div>

                <div class="form-group">
                    <label>Technology Stack</label>
                    <select name="technology.technologyId" required>
                        <option value="">-- Select Technology --</option>
                        <c:forEach var="tech" items="${technologies}">
                            <option value="${tech.technologyId}">${tech.name}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">
                    <label>Contact Person Name</label>
                    <input type="text" name="contactPersonName" placeholder="Manager Name" required>
                </div>

                <div class="form-group full-width">
                    <label>Brief Description</label>
                    <input type="text" name="description" placeholder="Describe core responsibilities and requirements..." required>
                </div>

                <div class="form-group">
                    <label>Contact Number</label>
                    <input type="text" name="contactPersonContactNum" placeholder="+91 00000 00000" required>
                </div>

                <div class="form-group">
                    <label>Start Date</label>
                    <input type="date" name="startDate">
                </div>

                <div class="form-group">
                    <label>End Date</label>
                    <input type="date" name="endDate">
                </div>

                <div class="form-group">
                    <label>Course Fee (₹)</label>
                    <input type="number" name="amount" value="0">
                </div>

                <div class="form-group">
                    <label>Monthly Stipend (₹)</label>
                    <input type="number" name="stipendAmount" value="0">
                </div>

                <div class="form-group">
                    <label>Publication Status</label>
                    <select name="active">
                        <option value="true">Active (Visible)</option>
                        <option value="false">Inactive (Hidden)</option>
                    </select>
                </div>

                <div class="checkbox-row">
                    <label class="checkbox-group">
                        <input type="checkbox" name="isPaid" value="true"> Requires Fee
                    </label>
                    <label class="checkbox-group">
                        <input type="checkbox" name="isStipend" value="true"> Offers Stipend
                    </label>
                </div>

                <button type="submit" class="btn-add">
                    <i class="fas fa-paper-plane" style="margin-right: 8px;"></i> Publish Internship
                </button>
            </form>
        </div>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>Internship Title</th>
                        <th>Focus & Description</th>
                        <th>Contact info</th>
                        <th>Type & Finance</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="intern" items="${internships}">
                        <tr>
                            <td>
                                <div style="font-weight: 700; color: var(--text-main); font-size: 15px;">${intern.title}</div>
                                <div style="font-size: 12px; color: var(--text-muted); margin-top: 5px;">
                                    <i class="far fa-calendar-alt" style="margin-right: 4px;"></i> ${intern.startDate} — ${intern.endDate}
                                </div>
                            </td>

                            <td>
                                <span class="badge badge-tech">${intern.technology.name}</span>
                                <div class="desc-truncate" title="${intern.description}">
                                    ${intern.description}
                                </div>
                            </td>

                            <td>
                                <div style="font-weight: 600; font-size: 14px;">${intern.contactPersonName}</div>
                                <div style="font-size: 12px; color: var(--text-muted); margin-top: 4px;">
                                    <i class="fas fa-phone-alt" style="font-size: 10px; margin-right: 5px;"></i> ${intern.contactPersonContactNum}
                                </div>
                            </td>

                            <td>
                                <c:choose>
                                    <c:when test="${intern.isPaid}">
                                        <div style="color: var(--success); font-weight: 700; font-size: 13px;">
                                            ₹${intern.amount} <span style="font-weight: 400; font-size: 11px; color: var(--text-muted);">Fee</span>
                                        </div>
                                    </c:when>
                                    <c:otherwise><div style="color: var(--text-muted); font-size: 13px;">Free Program</div></c:otherwise>
                                </c:choose>
                                
                                <c:if test="${intern.isStipend}">
                                    <div style="color: #f59e0b; font-weight: 700; font-size: 13px; margin-top: 6px;">
                                        ₹${intern.stipendAmount} <span style="font-weight: 400; font-size: 11px; color: var(--text-muted);">Stipend</span>
                                    </div>
                                </c:if>
                            </td>

                            <td>
                                <c:choose>
                                    <c:when test="${intern.active}">
                                        <span class="badge badge-active"><i class="fas fa-check-circle"></i> Live</span>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="badge badge-inactive"><i class="fas fa-times-circle"></i> Paused</span>
                                    </c:otherwise>
                                </c:choose>
                            </td>
                        </tr>
                    </c:forEach>
                    <c:if test="${empty internships}">
                        <tr>
                            <td colspan="5" style="text-align: center; padding: 50px; color: var(--text-muted);">
                                <i class="fas fa-folder-open" style="font-size: 40px; display: block; margin-bottom: 10px; opacity: 0.3;"></i>
                                No internships found. Add one above to get started.
                            </td>
                        </tr>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>