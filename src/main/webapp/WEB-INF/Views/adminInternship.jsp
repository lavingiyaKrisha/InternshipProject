<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Internship</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
<style>
body { font-family: 'Inter', sans-serif; background: #f4f6f8; margin: 0; padding: 0; }
header { background: #4e73df; color: #fff; padding: 15px; text-align: center; font-size: 22px; font-weight: 600; }
.container { width: 900px; margin: 30px auto; background: #fff; padding: 25px; border-radius: 8px; box-shadow: 0 6px 12px rgba(0,0,0,0.08); }
h2 { text-align: center; margin-bottom: 25px; color: #333; }
form { display: grid; gap: 15px; }
input, select { width: 100%; padding: 10px; border: 1px solid #dcdcdc; border-radius: 6px; outline: none; }
input:focus, select:focus { border-color: #4e73df; }
button { background: #4e73df; color: #fff; padding: 12px; border: none; border-radius: 6px; font-size: 16px; cursor: pointer; }
button:hover { background: #375acf; }
table { width: 100%; border-collapse: collapse; margin-top: 20px; }
th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
th { background: #f4f6f8; }
.message { color: green; text-align: center; font-weight: 500; margin-bottom: 10px; }
</style>
</head>
<body>
<header>Manage Internship</header>
<div class="container">
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>
    <form action="${pageContext.request.contextPath}/admin/addInternship" method="post">
    
        <input type="text" name="title" placeholder="Internship Title" >
        <select name="technology.id" >
            <c:forEach var="tech" items="${technologies}">
                <option value="${tech.id}">${tech.name}</option>
            </c:forEach>
        </select>
        <button type="submit">Save Internship</button>
    </form>

    <table>
        <tr><th>ID</th><th>Title</th><th>Technology</th></tr>
        <c:forEach var="intern" items="${internships}">
            <tr>
                <td>${intern.id}</td>
                <td>${intern.title}</td>
                <td>${intern.technology.name}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
