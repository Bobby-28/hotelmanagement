<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
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
            background-image: url('schedule.jpg');
            background-size: 100dvh;
            background-position: center;
        }
        h1 {
            color: #4CAF50;
            text-align: center;
            background-color: #000000;
            border-radius: 20px;
            width: 20vh;
            margin-left: 17vh;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
        }
        form {
            background-color: #684a4a95;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(107, 79, 79, 0.1);
            width: 50vh;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        p {
            color: red;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div>
        <h1>Checking Form</h1>
        <form action="course_formal" method="post">
            <table>
                <tr>
                    <td><input type="text" name="course_name" placeholder="Course Name:" required></td>
                </tr>
                <tr>
                    <td><input type="date" name="date" placeholder="Course Date:" required></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center;"><input type="submit" value="submit"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>