<!DOCTYPE html>
<html>
<head>
    <title>Course Select</title>
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
            background-image: url('course_seclet.jpg');
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
        select{
            width: calc(100% - 1px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            background-color: #fff;
            color: #000000;
        }
        option{
            background-color: rgb(57, 71, 108);
        }
        
    </style>
</head>
<body>
    <div>
        <h2>Course Select</h2>
        <form action="choose_course" method="post">
            <input type="text" id="s_id" name="s_id" placeholder="Student ID:" required>
            
            <input type="text" id="name" name="name" placeholder="Name:" required>
            
            <select name="course_name" id="course_name">
                <option value="JAVA">JAVA</option>
                <option value="NETWORKING">NETWORKING</option>
                <option value="C++">C++</option>
                <option value="FULL STACK MERN">FULL STACK MERN</option>
                <option value="MACHINE LERNING">MACHINE LERNING</option>
                <option value="BCA">BCA</option>
                <option value="MCA">MCA</option>
                <option value="ANDROID">ANDROID</option>
                <option value="OPERATING SYSTEM">OPERATING SYSTEM</option>
                <option value="CLOUD ENGINEERING">CLOUD ENGINEERING</option>
                <option value="SYSTEM DESIGN">SYSTEM DESIGN</option>
                <option value="IOS">IOS</option>
            </select>
            
            <input type="text" id="course_fee" name="course_fee" placeholder="Course Fee:" required>
            
            <input type="submit" value="Submit">
        </form>
    </div>
    
</body>
</html>