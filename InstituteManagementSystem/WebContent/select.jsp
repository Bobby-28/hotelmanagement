<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body {
            background-color: hsla(258, 95%, 7%, 0.774);
        }
        h2 {
            color: #FFD700; /* Gold color for the heading */ 
            width: 25vh;
            margin-left: 87vh;
            text-align: center;
            font-weight: bold;
            background-color: hsla(0, 6%, 55%, 0.455);
            border-radius: 20px;
            margin-top: 30vh;
        }
        .menu {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 50vh;
            margin-left: 75vh;
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
    </style>
</head>
<body>
    <h2>Selector Page</h2>
        <div id="menu" class="menu menu-hidden">
            <a href="entry.jsp">View Timing</a>
            <a href="choose_course.jsp">Choose Course</a>
            <a hreg="index.jsp">Logout</a>
            <!-- Add more menu items as needed -->
        </div>
</body>
</html>