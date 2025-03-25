<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Simples</title>
        <style>
            .container {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                height: 70vh;
                text-align: center;
                position: relative;
                min-height: 400px; /* Mantém um tamanho mínimo */
            }
            h2 {
                margin-top: 20px;
            }
            h3 {
                margin-top: 15px;
                color: green;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/NavBar.jspf"%>
        <div class="container">
            <h2>Calculadora de Juros Simples</h2>
            <form method="post">
                <label>Capital Inicial (R$):</label>
                <input type="number" name="capital" step="0.01" required><br>
                <label>Taxa de Juros (% ao mês):</label>
                <input type="number" name="taxa" step="0.01" required><br>
                <label>Tempo (meses):</label>
                <input type="number" name="tempo" required><br>
                <button type="submit">Calcular</button>
            </form>
            <%
                String capitalStr = request.getParameter("capital");
                String taxaStr = request.getParameter("taxa");
                String tempoStr = request.getParameter("tempo");
                
                if (capitalStr != null && taxaStr != null && tempoStr != null) {
                    double capital = Double.parseDouble(capitalStr);
                    double taxa = Double.parseDouble(taxaStr) / 100;
                    int tempo = Integer.parseInt(tempoStr);
                    
                    double montante = capital * (1 + (taxa * tempo));
            %>
                <h3>Valor Futuro: R$ <%= String.format("%.2f", montante) %></h3>
            <% } %>
        </div>
    </body>
</html>


