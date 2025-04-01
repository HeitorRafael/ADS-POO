<%-- 
    Document   : soma
    Created on : 1 de abr. de 2025, 14:32:43
    Author     : raffinoh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora de Soma</title>
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
            <h2>Calculadora de Soma</h2>
            <form method="post">
                <label>Informe um número:</label>
                <input type="number" name="numero" required>
                <button type="submit">Calcular</button>
            </form>
            
            <% 
                String numStr = request.getParameter("numero");
                if (numStr != null && !numStr.isEmpty()) {
                    int numero = Integer.parseInt(numStr);
                    int soma = 0;

                    // Calcula a soma de 1 até o número informado
                    for (int i = 1; i <= numero; i++) {
                        soma += i;
                    }
            %>
            <div class="resultado">
                <p>A soma dos números de 1 até <%= numero %> é:</p>
                <p><%= soma %></p>
            </div>
            <% } %>
        </div>
    </body>
</html>
