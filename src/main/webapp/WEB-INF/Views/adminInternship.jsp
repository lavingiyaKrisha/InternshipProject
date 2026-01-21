<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Internship</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

<style>
* { box-sizing: border-box; font-family: 'Inter', sans-serif; }
body { margin: 0; background: #f4f6f8; }

.container {
    width: 90%;
    max-width: 1000px;
    margin: 40px auto;
    background: #fff;
    padding: 30px;
    border-radius: 14px;
    box-shadow: 0 12px 30px rgba(0,0,0,0.08);
}

h2 { margin-bottom: 20px; color: #1f2937; }

/* Form */
form { display: grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap: 15px; margin-bottom: 30px; }

input, select { padding: 12px; border: 1px solid #d1d5db; border-radius: 8px; }
button { padding: 12px 20px; background: #4e73df; color: #fff; border: none; border-radius: 8px; cursor: pointer; font-weight: 500; }
button:hover { background: #3b5bdb; }

/* Table */
table { width: 100%; border-collapse: collapse; margin-top: 20px; }
th { background: #f1f5f9; padding: 12px; text-align: left; font-size: 14px; }
td { padding: 12px; border-top: 1px solid #e5e7eb; font-size: 14px; }

.back { margin-top: 20px; display: inline-block; text-decoration: none; color: #4e73df; font-size: 14px; }
</style>
</head>

<body>

<div class="container">

    <h2>Manage Internships</h2>

    <form action="${pageContext.request.contextPath}/admin/addInternship" method="post">
        <input type="text" name="title" placeholder="Internship Title" required>
        <input type="text" name="description" placeholder="Brief Description" required>
        <select name="technology.technologyId" required>
            <option value="">Select Technology</option>
            <c:forEach var="tech" items="${technologies}">
                <option value="${tech.technologyId}">${tech.name}</option>
            </c:forEach>
        </select>
        <input type="text" name="contactPersonName" placeholder="Contact Person Name" required>
        <input type="text" name="contactPersonContactNum" placeholder="Contact Number" required>
        <input type="number" name="amount" placeholder="Amount (if any)" min="0">
        <input type="checkbox" name="isPaid" value="true"> Paid
        <input type="checkbox" name="isStipend" value="true"> Stipend
        <input type="number" name="stipendAmount" placeholder="Stipend Amount" min="0">
        <input type="date" name="startDate" placeholder="Start Date">
        <input type="date" name="endDate" placeholder="End Date">
        <select name="active" required>
            <option value="true">Active</option>
            <option value="false">Inactive</option>
        </select>

        <button type="submit" style="grid-column: span 2;">Add Internship</button>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Technology</th>
            <th>Contact</th>
            <th>Paid</th>
            <th>Stipend</th>
            <th>Amount</th>
            <th>Start</th>
            <th>End</th>
            <th>Active</th>
        </tr>

        <c:forEach var="intern" items="${internships}">
            <tr>
                <td>${intern.internshipId}</td>
                <td>${intern.title}</td>
                <td>${intern.description}</td>
                <td>${intern.technology.name}</td>
                <td>${intern.contactPersonName} (${intern.contactPersonContactNum})</td>
                <td><c:choose><c:when test="${intern.isPaid}">Yes</c:when><c:otherwise>No</c:otherwise></c:choose></td>
                <td><c:choose><c:when test="${intern.isStipend}">Yes</c:when><c:otherwise>No</c:otherwise></c:choose></td>
                <td>${intern.amount}</td>
                <td>${intern.startDate}</td>
                <td>${intern.endDate}</td>
                <td><c:choose><c:when test="${intern.active}">Yes</c:when><c:otherwise>No</c:otherwise></c:choose></td>
            </tr>
        </c:forEach>
    </table>

    <a class="back" href="${pageContext.request.contextPath}/admin">← Back to Dashboard</a>

</div>

</body>
</html>
