<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manage Technology</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
body {
    font-family: 'Inter', sans-serif;
    background: #f4f6f8;
    margin: 0;
    padding: 0;
}
header {
    background: #4e73df;
    color: #fff;
    padding: 15px;
    text-align: center;
    font-size: 22px;
    font-weight: 600;
}
.container {
    width: 700px;
    margin: 30px auto;
    background: #fff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0 6px 12px rgba(0,0,0,0.08);
}
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}
form {
    display: grid;
    gap: 15px;
}
input {
    width: 100%;
    padding: 10px;
    border: 1px solid #dcdcdc;
    border-radius: 6px;
}
button {
    background: #4e73df;
    color: #fff;
    padding: 12px;
    border: none;
    border-radius: 6px;
    font-size: 16px;
    cursor: pointer;
}
button:hover {
    background: #375acf;
}
table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 25px;
}
th, td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: center;
}
th {
    background: #f4f6f8;
}
a {
    text-decoration: none;
    color: red;
    font-weight: 500;
}
.message {
    color: green;
    text-align: center;
    margin-bottom: 10px;
    font-weight: 500;
}
</style>
</head>

<body>

<header>Manage Technology</header>

<div class="container">

    <!-- SUCCESS MESSAGE -->
    <c:if test="${not empty message}">
        <div class="message">${message}</div>
    </c:if>

    <!-- ADD TECHNOLOGY FORM -->
    <form action="${pageContext.request.contextPath}/admin/addTechnology" method="post">
        <input type="text" name="name" placeholder="Technology Name" >
        <button type="submit">Save Technology</button>
    </form>

    <!-- TECHNOLOGY LIST -->
    <table>
        <tr>
            <th>ID</th>
            <th>Technology Name</th>
            <th>Action</th>
        </tr>

        <c:forEach var="tech" items="${technologies}">
            <tr>
                <td>${tech.id}</td>
                <td>${tech.name}</td>
                <td>
                    <a href="deleteTechnology/${tech.id}"
                       onclick="return confirm('Are you sure you want to delete this technology?')">
                        Delete
                    </a>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>

</body>
</html>
