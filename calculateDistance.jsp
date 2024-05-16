<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 13.05.2024
  Time: 15:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.lang.Math" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    double lat1 = Double.parseDouble(request.getParameter("lat1"));
    double lat2 = Double.parseDouble(request.getParameter("lat2"));
    double lon1 = Double.parseDouble(request.getParameter("lon1"));
    double lon2 = Double.parseDouble(request.getParameter("lon2"));

    double R = 6371e3; // Earth radius in meters
    double phi1 = Math.toRadians(lat1);
    double phi2 = Math.toRadians(lat2);
    double deltaPhi = Math.toRadians(lat2 - lat1);
    double deltaLambda = Math.toRadians(lon2 - lon1);

    double a = Math.sin(deltaPhi / 2) * Math.sin(deltaPhi / 2) +
            Math.cos(phi1) * Math.cos(phi2) *
                    Math.sin(deltaLambda / 2) * Math.sin(deltaLambda / 2);

    double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

    double distance = R * c;
%>
<!DOCTYPE html>
<html>
<head>
    <title>Distance Result</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://i0.wp.com/sportishka.com/uploads/posts/2023-12/1701745014_sportishka-com-p-mashina-na-fioletovom-fone-krasivo-65.jpg?ssl=1');
            background-size: cover;
            /*background-position: center;*/
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.7);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        p {
            text-align: center;
            font-size: 18px;
        }
        form {
            text-align: center;
            margin-top: 20px;
        }
        input[type="text"], input[type="submit"] {
            padding: 10px;
            margin: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #7b00ff;
            color: #fff;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3), 0 1px 3px rgba(0, 0, 0, 0.15);
            transition: all 0.3s ease;
        }
        input[type="submit"]:hover {
            background-color: #8600b3;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.45), 0 3px 6px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Distance Result</h2>
    <p>The distance between the two points is: <%= distance %> meters</p>

    <!-- Кнопка для повернення на попереднє вікно -->
    <form action="index.jsp">
        <input type="submit" value="Back">
    </form>
</div>
</body>
</html>


