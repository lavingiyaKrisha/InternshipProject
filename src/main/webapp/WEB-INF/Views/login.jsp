<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
    body {
        margin: 0;
        font-family: 'Inter', sans-serif;
        background: #f4f6f8;
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .card {
        background: #ffffff;
        width: 420px;
        padding: 35px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.08);
    }

    h2 {
        text-align: center;
        margin-bottom: 30px;
        font-weight: 600;
        color: #2c3e50;
    }

    .form-group {
        margin-bottom: 18px;
    }

    label {
        font-size: 13px;
        font-weight: 500;
        color: #555;
        display: block;
        margin-bottom: 6px;
    }

    input {
        width: 100%;
        padding: 11px;
        border-radius: 6px;
        border: 1px solid #dcdcdc;
        font-size: 14px;
        outline: none;
    }

    input:focus {
        border-color: #4e73df;
    }

    .btn {
        width: 100%;
        background: #4e73df;
        color: #fff;
        padding: 12px;
        border: none;
        border-radius: 6px;
        font-size: 15px;
        font-weight: 500;
        cursor: pointer;
        margin-top: 10px;
    }

    .btn:hover {
        background: #375acf;
    }

    .links {
        text-align: center;
        margin-top: 20px;
        font-size: 13px;
        color: #555;
    }

    .links a {
        text-decoration: none;
        color: #4e73df;
        font-weight: 500;
    }

    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<div class="card">
    <h2>Login</h2>
    
    <% String error = (String) request.getAttribute("error"); %>
    <% if(error != null) { %>
        <div class="error"><%= error %></div>
    <% } %>

    <form action="login-process" method="post">

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" required>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" required>
        </div>

        <button type="submit" class="btn">Login</button>
    </form>

    <div class="links">
        <a href="fg">Forgot Password?</a>
        <br><br>
        Don’t have an account?
        <a href="signup">Sign Up</a>
    </div>
</div>

</body>
</html>
