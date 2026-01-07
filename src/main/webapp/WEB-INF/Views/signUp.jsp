<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>

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
        width: 460px;
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
        margin-bottom: 16px;
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

    .gender {
        display: flex;
        gap: 20px;
        font-size: 14px;
        color: #444;
    }

    .gender input {
        width: auto;
        margin-right: 5px;
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
        margin-top: 15px;
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
    <h2>Create Account</h2>

    <form action="saveUser" method="post">

      

        <div class="form-group">
            <label>First Name</label>
            <input type="text" name="firstName" >
        </div>

        <div class="form-group">
            <label>Last Name</label>
            <input type="text" name="lastName" >
        </div>

        <div class="form-group">
            <label>Gender</label>
            <div class="gender">
                <label><input type="radio" name="gender" value="Male"> Male</label>
                <label><input type="radio" name="gender" value="Female"> Female</label>
                <label><input type="radio" name="gender" value="Other"> Other</label>
            </div>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email" name="email" >
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="password" name="password" >
        </div>

        <div class="form-group">
            <label>Contact Number</label>
            <input type="text" name="contactNum" >
        </div>

        <div class="form-group">
            <label>City</label>
            <input type="text" name="city">
        </div>

        <div class="form-group">
            <label>State</label>
            <input type="text" name="state">
        </div>

        <div class="form-group">
            <label>Country</label>
            <input type="text" name="country">
        </div>
<!-- 
	<div class="form-group">
    <label>Profile Picture</label>
    <input type="file" name="profilePicFile">
</div> -->
	
        <button type="submit" class="btn">Create Account</button>
    </form>

    <div class="links">
        Already have an account?
        <a href="login">Login</a>
        <br><br>
        <a href="fg">Forgot Password?</a>
    </div>
</div>

</body>
</html>
