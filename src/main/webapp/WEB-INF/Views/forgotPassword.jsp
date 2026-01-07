<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>

<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>
    * {
        box-sizing: border-box;
        font-family: 'Inter', sans-serif;
    }

    body {
        margin: 0;
        min-height: 100vh;
        background: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .card {
        background: #ffffff;
        width: 360px;
        padding: 32px 30px;
        border-radius: 8px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
        text-align: center;
    }

    h2 {
        margin: 0 0 8px;
        font-size: 22px;
        font-weight: 600;
        color: #222;
    }

    p {
        font-size: 14px;
        color: #666;
        margin-bottom: 22px;
        line-height: 1.5;
    }

    input {
        width: 100%;
        padding: 11px 12px;
        margin-bottom: 18px;
        border-radius: 6px;
        border: 1px solid #ccc;
        font-size: 14px;
        outline: none;
    }

    input:focus {
        border-color: #4e54c8;
    }

    button {
        width: 100%;
        padding: 11px;
        border: none;
        border-radius: 6px;
        background: #4e54c8;
        color: #fff;
        font-size: 15px;
        font-weight: 500;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    button:hover {
        background: #3b40a4;
    }

    .links {
        margin-top: 18px;
        font-size: 13px;
    }

    .links a {
        color: #4e54c8;
        text-decoration: none;
    }

    .links a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<div class="card">
    <h2>Forgot Password</h2>
    <p>Please enter your registered email address.<br>
       We’ll send you an OTP to reset your password.</p>

    <form action="resetPassword" method="post">
        <input type="email" name="email" placeholder="Email address" >
        <button type="submit">Send OTP</button>
    </form>

    <div class="links">
        <a href="login">← Back to Login</a>
    </div>
</div>

</body>
</html>
