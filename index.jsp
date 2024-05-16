<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Distance Calculator</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-image: url('https://abrakadabra.fun/uploads/posts/2021-12/1640434372_3-abrakadabra-fun-p-oboi-na-rabochii-stol-neonovii-gorod-3.jpg');
      background-size: cover;
    }
    .container {
      max-width: 600px;
      margin: 20px auto;
      padding: 20px;
      background-color: rgba(255, 255, 255, 0.7);
      border-radius: 8px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    input[type="text"], input[type="submit"] {
      width: 100%;
      padding: 10px;
      margin: 5px;
      border: none; /* Видаляємо обрамлення */
      border-radius: 5px;
      font-size: 16px;
      box-sizing: border-box;
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
  <h2 style="text-align: center; color: #000000; font-size: 24px; font-weight: bold; text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);">
    Distance calculator
  </h2>
  <form action="calculateDistance.jsp" method="post">
    <label for="lat1">Latitude 1 (φ1 in radians):</label>
    <input type="text" id="lat1" name="lat1" required>
    <label for="lat2">Latitude 2 (φ2 in radians):</label>
    <input type="text" id="lat2" name="lat2" required>
    <label for="lon1">Longitude 1 (λ1 in radians):</label>
    <input type="text" id="lon1" name="lon1" required>
    <label for="lon2">Longitude 2 (λ2 in radians):</label>
    <input type="text" id="lon2" name="lon2" required>
    <input type="submit" value="Calculate">
  </form>
</div>
</body>
</html>