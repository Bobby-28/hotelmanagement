<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Institute Management System</title>
    <link rel="stylesheet" type="text/css" href="css/styles.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/first.jpg'); /* Replace with your hotel background image path */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            color: #fff;
            text-align: center;
            padding: 50px;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh; /* Full viewport height */
        }
        .container {
            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for readability */
            padding: 20px;
            border-radius: 10px;
            max-width: 400px; /* Adjust as needed */
            text-align: center;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5); /* Text shadow for better readability */
        }
        .menu {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .menu1 {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        .menu a {
            display: block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #FFD700; /* Gold color for buttons */
            color: #000;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        .menu1 a {
            display: block;
            margin: 10px;
            padding: 10px 20px;
            background-color: #FFD700; /* Gold color for buttons */
            color: #000;
            text-decoration: none;
            border-radius: 4px;
            transition: background-color 0.3s;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
        }
        .menu a:hover {
            background-color: #FFC107; /* Slightly darker gold on hover */
        }
        .menu1 a:hover {
            background-color: #FFC107; /* Slightly darker gold on hover */
        }
        .toggle-menu {
            position: absolute;
            top: 20px;
            right: 20px;
            cursor: pointer;
            color: #fff;
            font-size: 24px;
            z-index: 1000; /* Ensure it's above other content */
        }
        .toggle-menu1 {
            position: absolute;
            top: 20px;
            left: 20px;
            cursor: pointer;
            color: #fff;
            font-size: 24px;
            z-index: 1000; /* Ensure it's above other content */
        }
        .menu-hidden {
            display: none; /* Hidden initially */
        }
        .menu-visible {
            display: flex; /* Shown when toggled */
        }
        #img1{
            border-radius: 210px;
            height: 40px;
        }
    </style>
    <script>
        function toggleMenu() {
            var menu = document.getElementById('menu');
            menu.classList.toggle('menu-visible');
        }
        function toggleMenu1(){
        	var menu1= document.getElementById('menu1');
        	menu1.classList.toggle('menu-visible');
        }
    </script>
</head>
<body>
    <div class="container">
        <h1>Welcome to Institute Management System</h1>
        <!-- Toggle menu button -->
        <div class="toggle-menu" onclick="toggleMenu()">☰</div>
        <div class="toggle-menu1" onclick="toggleMenu1()"><img src="images/login1.jpg" alt="image" id="img1"></div>
        
        <!-- Menu items -->
        <div id="menu" class="menu menu-hidden">
            <a href="student_login.jsp">Student Login</a>
            <a href="student_register.jsp">Student Register</a>
            <!-- Add more menu items as needed -->
        </div>
        <div id="menu1" class= "menu1 menu-hidden">
       <!--   <a href="admin.jsp">Admin Login</a> -->
        <a href="teacher_login.jsp">Teacher Login</a>
        <a href="teacher_register.jsp">Teacher Register</a>
        </div>
    </div>
<iframe width="320" height="240" src="https://www.youtube.com/shorts/W6mOoOXcq-E?feature=share"></iframe>
</body>
</html>