<%@page import="com.nutridiet.project.model.Nutritionist"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
Nutritionist nutritionist = (Nutritionist) session.getAttribute("nutritionist");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #e9dac1, #f4ecd8, #dac3b3);
            color: #4a403a;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            background-size: 200% 200%;
            animation: backgroundAnimation 12s ease infinite;
        }

        @keyframes backgroundAnimation {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        h2 {
            margin-bottom: 20px;
            color: #5a4d44;
            font-size: 34px;
            text-align: center;
            text-shadow: 0 0 8px rgba(90, 77, 68, 0.2);
        }

        .content {
            padding: 20px;
            margin-top: 20px;
            width: 80%;
            max-width: 600px;
            background-color: #e5d2c2;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            color: #4a403a;
            font-size: 16px;
            text-align: center;
        }
    </style>
</head>
<body>
<h2>My Profile</h2>
<div class="content">
    <p><b>Email:</b> <%= nutritionist.getNemail() %></p>
    <p><b>Name:</b> <%= nutritionist.getNname() %></p>
    <p><b>Age:</b> <%= nutritionist.getNage() %></p>
    <p><b>Contact:</b> <%= nutritionist.getNcontact() %></p>
    <p><b>Specification:</b> <%= nutritionist.getNspecification() %></p>
    <p><b>Experience:</b> <%= nutritionist.getNexperience() %></p>
    <p><b>Education:</b> <%= nutritionist.getNeducation() %></p>
    <!-- Avoid showing password for security reasons -->
</div>

<!-- Optional links to navigate to settings or logout -->
<div style="text-align: center; margin-top: 20px;">
    <a href="nutrisettings">Edit Profile</a> | <a href="/">Logout</a>
</div>

</body>
</html>