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
            background-image: url('images/adminadduser.jpg'); /* Background image related to health */
            background-size: cover;
            background-position: center;
            color: #333;
            line-height: 1.6;
            padding: 0;
            min-height: 100vh; /* Make sure the page takes full height */
            display: flex;
            flex-direction: row; /* Align navbar and content side-by-side */
        }

        /* Navigation Bar */
        .nav-bar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            width: 250px; /* Width of the navbar */
            background-color: #2c3e50; /* Dark background */
            color: white;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.2);
            padding-top: 20px;
            z-index: 10;
        }

        .nav-bar h2 {
            text-align: center;
            color: #f1c40f; /* Gold for branding */
            margin-bottom: 20px;
        }

        .nav-bar ul {
            list-style: none;
            padding: 0;
        }

        .nav-bar ul li {
            margin: 15px 0;
            text-align: center;
        }

        .nav-bar ul li a {
            text-decoration: none;
            font-size: 1.2em;
            color: white;
            display: block;
            padding: 10px 20px;
            transition: background 0.3s, color 0.3s;
        }

        .nav-bar ul li a:hover {
            background-color: #f1a8a1; /* Coral background on hover */
            color: #2c3e50; /* Dark text on hover */
        }

        /* Main Content */
        main {
            margin-left: 270px; /* Offset content to the right of navbar */
            padding: 20px;
            flex: 1;
        }

        .signup-form {
            background-color: rgba(255, 255, 255, 0.85); /* Light, neutral background for the form */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 600px;
            margin: auto;
            box-sizing: border-box;
        }

        .signup-form h2 {
            font-size: 2em;
            color: #5f6368; /* Soft grey for titles */
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-spacing: 10px;
        }

        td {
            padding: 10px;
            font-size: 1.1em;
            text-align: left;
        }

        label {
            font-size: 1.1em;
            color: #444; /* Dark grey for readability */
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="password"], 
        input[type="number"], select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            font-size: 1.1em;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #f1a8a1; /* Soft coral color */
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            padding: 12px 20px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #d17a72; /* Darker coral on hover */
        }

        a {
            display: inline-block;
            margin-top: 20px;
            font-size: 1.2em;
            color: #6c757d; /* Muted grey */
            text-decoration: none;
            transition: color 0.3s;
        }

        a:hover {
            color: #4b5355; /* Slightly darker grey on hover */
        }

        /* Footer Styling */
        footer {
            text-align: center;
            margin-top: 50px;
            font-size: 1em;
            color: rgba(108, 117, 125, 0.6); /* Light grey footer */
        }

        footer a {
            color: #007bff;
            text-decoration: none;
        }

        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<!--    <div class="nav-bar">
   --> 
   <%@ include file="adminnavbar.jsp" %>
    
        <h2>NutriScout</h2>


    <main>
        <section class="signup-form">
            <h2>Add User</h2>
            <form method="post" action="insertuseradmin">
                <table>
                    <!-- Form Fields -->
                    <tr>
                        <td><label for="uusername">Enter Name</label></td>
                        <td><input type="text" id="uusername" name="uusername" required placeholder="Enter your full name" /></td>
                    </tr>
                    <tr>
                        <td><label for="uemail">Enter Email ID</label></td>
                        <td><input type="email" id="uemail" name="uemail" required placeholder="Enter your email" /></td>
                    </tr>
                    <tr>
                        <td><label for="uage">Enter Age</label></td>
                        <td><input type="date" id="uage" name="uage" required /></td>
                    </tr>
                    <tr>
                        <td><label>Select Role</label></td>
                        <td>
                            <select id="urole" name="urole" required>
                                <option value="">---select---</option>
                                <option value="child">Child</option>
                                <option value="teenager">Teenager</option>
                                <option value="youth">Youth</option>
                                <option value="aged">Aged</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label>Select Gender</label></td>
                        <td>
                            <input type="radio" id="male" name="ugender" value="MALE" required />
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="ugender" value="FEMALE" required />
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="ugender" value="OTHERS" required />
                            <label for="others">Others</label>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="upassword">Enter Password</label></td>
                        <td><input type="password" id="upassword" name="upassword" required placeholder="Create a password" /></td>
                    </tr>
                    <tr>
                        <td><label for="ucontact">Enter Contact</label></td>
                        <td><input type="number" id="ucontact" name="ucontact" required placeholder="Enter Your Contact No" /></td>
                    </tr>
                    <tr>
                        <td><label>Select Body Type</label></td>
                        <td>
                            <select id="ubodytype" name="ubodytype" required>
                                <option value="">---select---</option>
                                <option value="Girl_Athletics">Girl_Athletics</option>
                                <!-- Add More Options -->
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="button-container">
                            <input type="submit" value="Register" />
                            <input type="reset" value="Clear" />
                       
