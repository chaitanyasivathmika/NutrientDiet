<%@page import="com.nutridiet.project.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Admin admin = (Admin)session.getAttribute("admin");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
 /* General Styling */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Roboto', sans-serif; /* Modern, clean font */
    background: linear-gradient(to right, #ece9e6, #ffffff); /* Soft gradient background */
    color: #2c3e50; /* Neutral dark blue-gray text */
    line-height: 1.6;
    padding: 20px;
}

/* Header */
header {
    background-color: #34495e; /* Deep blue-gray for a professional tone */
    color: white;
    padding: 30px 0;
    text-align: center;
    border-radius: 10px; /* Smooth, rounded corners */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

header h1 {
    font-size: 2.8em;
    font-weight: bold;
}

header p {
    font-size: 1.2em;
    margin-top: 10px;
}

/* Navbar Styling */
nav {
    background-color: #2c3e50; /* Consistent dark blue-gray for navigation */
    padding: 15px;
    text-align: center;
    border-radius: 10px;
    margin-top: 20px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

nav a {
    color: #ecf0f1; /* Light gray text for contrast */
    text-decoration: none;
    font-size: 1.2em;
    margin: 0 15px;
    padding: 10px 15px;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

nav a:hover {
    background-color: #16a085; /* Vibrant teal for hover effect */
    color: white;
    transform: scale(1.1); /* Subtle zoom effect */
}

/* Main Content */
.main-content {
    margin-top: 40px;
    text-align: center;
}

.main-content h2 {
    font-size: 2.2em;
    color: #2c3e50;
    margin-bottom: 20px;
    font-weight: 500;
}

.total-users-box {
    background-color: #ffffff;
    border-radius: 12px;
    padding: 40px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    width: 320px;
    margin: 30px auto;
    font-size: 1.8em;
    font-weight: bold;
    color: #e67e22; /* Bright orange for highlighting important stats */
    border: 2px solid #e67e22;
}

/* Footer Styling */
footer {
    text-align: center;
    margin-top: 50px;
    font-size: 1em;
    color: #7f8c8d; /* Subtle gray for footer text */
}

footer a {
    color: #34495e;
    text-decoration: none;
}

footer a:hover {
    text-decoration: underline;
}

    /* Navbar Styling */
    nav {
        background-color: #607d8b; /* Slate gray-blue for navigation */
        padding: 10px;
        text-align: center;
    }

    nav a {
        color: white;
        text-decoration: none;
        font-size: 1.2em;
        margin: 0 15px;
        padding: 10px;
        border-radius: 5px;
        transition: background-color 0.3s ease;
    }

    nav a:hover {
        background-color: #455a64; /* Darker shade of slate gray */
    }

    /* Main Content */
    .main-content {
        margin-top: 30px;
        text-align: center;
    }

    .main-content h2 {
        font-size: 2em;
        color: #333;
        margin-bottom: 20px;
    }

    .total-users-box {
        background-color: #ffffff;
        border-radius: 8px;
        padding: 30px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 300px;
        margin: 0 auto;
        font-size: 1.5em;
        color: #ffa726; /* Soft orange for a positive but neutral tone */
    }



</style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<header>
    <h1>Admin Dashboard</h1>
    <p>Manage and analyze nutrient data to help balance diets and detect deficiencies</p>
</header>

<div class="main-content">
    <h2>Welcome to the Admin Home Page</h2><h2><%= admin.getUsername() %></h2>
    <div class="total-users-box">
        Total Users: <c:out value="${count}"></c:out>
    </div>
</div>


</body>
</html>
