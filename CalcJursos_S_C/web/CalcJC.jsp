<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Juros Compostos</title>
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
            table {
                border-collapse: collapse;
                margin-top: 20px;
            }
            table, th, td {
                border: 1px solid black;
                padding: 10px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/NavBar.jspf"%>
        <div class="container">
            <h2>Calculadora de Juros Compostos</h2>
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
            %>
                <h3>Valor Futuro Acumulado: R$ <%= String.format("%.2f", capital * Math.pow(1 + taxa, tempo)) %></h3>

                <h3>Tabela de Crescimento por Período:</h3>
                <table>
                    <tr>
                        <th>Mês</th>
                        <th>Valor Acumulado (R$)</th>
                    </tr>
                    <% 
                        for (int i = 1; i <= tempo; i++) {
                            double valor = capital * Math.pow(1 + taxa, i);
                    %>
                        <tr>
                            <td><%= i %></td>
                            <td>R$ <%= String.format("%.2f", valor) %></td>
                        </tr>
                    <% } %>
                </table>
            <% } %>
        </div>
    </body>
</html>



