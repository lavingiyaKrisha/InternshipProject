<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Technology</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&display=swap" rel="stylesheet">

<style>
* { box-sizing: border-box; font-family: 'Inter', sans-serif; }
body { margin: 0; background: #f4f6f8; }
.container { width: 90%; max-width: 800px; margin: 40px auto; background: #fff; padding: 30px; border-radius: 14px; box-shadow: 0 12px 30px rgba(0,0,0,0.08); }
h2 { margin-bottom: 20px; color: #1f2937; }

/* Form */
form { display: flex; flex-wrap: wrap; gap: 15px; margin-bottom: 25px; }
input, select { flex: 1; padding: 12px; border: 1px solid #d1d5db; border-radius: 8px; }
button { padding: 12px 20px; background: #10b981; color: #fff; border: none; border-radius: 8px; cursor: pointer; font-weight: 500; }
button:hover { background: #059669; }

/* Table */
table { width: 100%; border-collapse: collapse; }
th { background: #f1f5f9; padding: 12px; text-align: left; font-size: 14px; }
td { padding: 12px; border-top: 1px solid #e5e7eb; font-size: 14px; }

.back { margin-top: 20px; display: inline-block; text-decoration: none; color: #4e73df; font-size: 14px; }
</style>
</head>

<body>

<div class="container">

    <h2>Manage Technologies</h2>

    <form action="${pageContext.request.contextPath}/admin/addTechnology" method="post">
        <input type="text" name="name" placeholder="Technology Name" required>
        <input type="text" name="description" placeholder="Description" required>

        <!-- Active field as dropdown -->
        <select name="active" required>
            <option value="" disabled selected>Active Status</option>
            <option value="true">Active</option>
            <option value="false">Inactive</option>
        </select>

        <button type="submit">Add</button>
    </form>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Active</th>
        </tr>

        <c:forEach var="tech" items="${technologies}">
            <tr>
                <td>${tech.technologyId}</td>
                <td>${tech.name}</td>
                <td>${tech.description}</td>
                <td>
                    <c:choose>
                        <c:when test="${tech.active}">Active</c:when>
                        <c:otherwise>Inactive</c:otherwise>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
    </table>

    <a class="back" href="${pageContext.request.contextPath}/admin">← Back to Dashboard</a>

</div>

</body>
</html>
