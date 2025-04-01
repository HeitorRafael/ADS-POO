<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificador de Números Primos</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                text-align: center;
                background-color: #f4f4f4;
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
        <%@include file="WEB-INF/jspf/NavBar.jsp" %>
        <div class="container">
            <h2>Verificador de Números Primos</h2>
            <form method="post">
                <label>Digite um número:</label>
                <input type="number" name="numero" required>
                <button type="submit">Verificar</button>
            </form>
            <%
                String numeroStr = request.getParameter("numero");
                if (numeroStr != null) {
                    int numero = Integer.parseInt(numeroStr);
                    boolean ehPrimo = numero > 1;
                    StringBuilder divisores = new StringBuilder();
                    
                    for (int i = 1; i <= numero; i++) {
                        if (numero % i == 0) {
                            divisores.append(i).append(" ");
                        }
                    }
                    
                    for (int i = 2; i <= Math.sqrt(numero); i++) {
                        if (numero % i == 0) {
                            ehPrimo = false;
                            break;
                        }
                    }
            %>
            <div class="resultado">
                O número <%= numero %> é <%= ehPrimo ? "Primo" : "Não Primo" %>
                <% if (!ehPrimo) { %>
                    <br>Divisores: <%= divisores.toString() %>
                <% } %>
            </div>
            <% } %>
        </div>
    </body>
</html>

