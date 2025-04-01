<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sequência de Fibonacci</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                text-align: center;
                padding-top: 60px;
            }
            .container {
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                display: inline-block;
                margin-top: 20px;
            }
            input, button {
                margin: 10px;
                padding: 10px;
                font-size: 16px;
            }
            .resultado {
                margin-top: 20px;
                font-size: 18px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <%@include file ="WEB-INF/jspf/NavBar.jsp" %>
        <div class="container">
            <h2>Calculadora de Fibonacci</h2>
            <form method="post">
                <label>Digite um número:</label>
                <input type="number" name="indice" required>
                <button type="submit">Gerar Sequência</button>
            </form>
            <%
                String indiceStr = request.getParameter("indice");
                if (indiceStr != null) {
                    int indice = Integer.parseInt(indiceStr);
                    int a = 0, b = 1;
            %>
            <div class="resultado">
                <p>Sequência de Fibonacci até o índice <%= indice %>:</p>
                <p>
                    <%= a %>
                    <% for (int i = 1; i < indice; i++) {
                        int temp = a + b;
                        a = b;
                        b = temp;
                    %>
                    , <%= a %>
                    <% } %>
                </p>
            </div>
            <% } %>
        </div>
    </body>
</html>
