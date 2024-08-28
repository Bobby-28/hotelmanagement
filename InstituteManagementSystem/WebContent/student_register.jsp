<!DOCTYPE html>
<html>
<head>
    <title>Student Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-size:cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: hsla(258, 95%, 7%, 0.774);
            color: #fff;
            background-image: url('student_register.jpg');
            background-size: 100dvh;
            background-position: center;
        }
        h2 {
            color: #FFD700; /* Gold color for the heading */ 
            margin-bottom: -42vh;
            text-align: center;
            font-weight: bold;
            background-color: hsla(0, 6%, 55%, 0.455);
            border-radius: 20px;
        }
        form {
            background-color: hsla(0, 6%, 55%, 0.455); /* Semi-transparent background */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
            width: 300px;
            box-sizing: border-box;
            margin-top: 45vh;
        }
        input[type="text"], input[type="password"], input[type="email"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #FFD700; /* Gold color for the button */
            color: #000;
            padding: 10px 0;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #FFC107; /* Slightly darker gold on hover */
        }
    </style>
</head>
<body>
    <div>
        <h2>Student Registration</h2>
        <form action="student_register" method="post">
            <input type="text" id="name" name="name" placeholder="Name" required>
            
            <input type="password" id="password" name="password" placeholder="Password" required>
            
            <input type="email" id="email" name="email" placeholder="Email" required>
            
            <input type="submit" value="Student Register">
        </form>
    </div>
</body>
</html>