<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add User</title>

    <style>
        /* General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            min-height: 100vh;
            background-image: url('images/background.jpg');
            background-size: cover;
            background-position: center;
        }

        /* Navbar Styling */
        .navbar {
            width: 250px;
            background-color: #333;
            color: #fff;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            padding-top: 20px;
        }

        .navbar h1 {
            text-align: center;
            font-size: 1.5em;
            margin-bottom: 20px;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
        }

        .navbar ul li {
            margin: 10px 0;
            text-align: center;
        }

        .navbar ul li a {
            text-decoration: none;
            color: #fff;
            font-size: 1.1em;
            display: block;
            padding: 10px;
            transition: background-color 0.3s;
        }

        .navbar ul li a:hover {
            background-color: #575757;
        }

        /* Main Content Styling */
        .content {
            margin-left: 270px;
            padding: 20px;
            width: calc(100% - 270px);
        }

        .signup-form {
            background-color: rgba(255, 255, 255, 0.85);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            margin: auto;
        }

        h2 {
            font-size: 2em;
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            color: #666;
            text-align: center;
            margin-bottom: 20px;
        }

        .input-container {
            margin-bottom: 20px;
        }

        label {
            font-size: 1.1em;
            color: #444;
            display: block;
            margin-bottom: 5px;
        }

        input[type="text"], input[type="email"], input[type="password"], input[type="number"], input[type="date"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            font-size: 1.1em;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .submit-btn, .back-btn {
            background-color: #74c69d;
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .submit-btn:hover, .back-btn:hover {
            background-color: #52b788;
        }

        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1em;
            color: rgba(108, 117, 125, 0.6);
        }
    </style>
</head>
<body>
    <!-- Navbar Section -->
    <div class="navbar">
        <h1>Admin Panel</h1>
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <!-- Main Content Section -->
    <div class="content">
        <section class="signup-form">
            <h2>Sign Up (User)</h2>
            <p>Register a new user in the system to manage operations efficiently.</p>

            <form method="post" action="insertUserAdmin">
                <div class="input-container">
                    <label for="uname">Enter Name</label>
                    <input type="text" id="uname" name="uname" required placeholder="User name"/>
                </div>

                <div class="input-container">
                    <label for="uemail">Enter Email ID</label>
                    <input type="email" id="uemail" name="uemail" required placeholder="User email"/>
                </div>

                <div class="input-container">
                    <label for="uage">Enter Age</label>
                    <input type="date" id="uage" name="uage" required/>
                </div>

                <div class="input-container">
                    <label for="ucontact">Enter Contact</label>
                    <input type="number" id="ucontact" name="ucontact" required placeholder="User Contact No"/>
                </div>

                <div class="input-container">
                    <label for="urole">Role</label>
                    <select id="urole" name="urole" required>
                        <option value="">---select---</option>
                        <option value="admin">Admin</option>
                        <option value="editor">Editor</option>
                        <option value="viewer">Viewer</option>
                    </select>
                </div>

                <div class="input-container">
                    <label for="upassword">Enter Password</label>
                    <input type="password" id="upassword" name="upassword" required placeholder="User Password"/>
                </div>

                <div class="button-container">
                    <input type="submit" value="Register" class="submit-btn"/>
                    <input type="reset" value="Clear" class="back-btn"/>
                </div>
            </form>
        </section>

        <footer>
            <p>© 2024 Admin Management System</p>
        </footer>
    </div>
</body>
</html>
