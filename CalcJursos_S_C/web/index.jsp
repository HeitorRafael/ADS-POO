<%-- 
    Document   : index
    Created on : 25 de mar. de 2025, 14:26:58
    Author     : raffinoh
--%>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Calculadora de Juros</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            margin-bottom: 20px;
        }
        .menu {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }
        .menu a {
            text-decoration: none;
            background: #007BFF;
            color: white;
            padding: 10px;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .menu a:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Escolha a Calculadora</h1>
        <div class="menu">
            <a href="CalcJS.jsp">Calculadora de Juros Simples</a>
            <a href="CalcJC.jsp">Calculadora de Juros Compostos</a>
        </div>
    </div>
</body>
</html>

