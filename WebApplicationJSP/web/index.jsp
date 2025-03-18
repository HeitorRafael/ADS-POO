<%-- 
    Document   : index
    Created on : 18 de mar. de 2025, 14:25:10
    Author     : raffinoh
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.GregorianCalendar" %>
<html>
<head>
    <title>Calendário Dinâmico</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
        }
        table {
            width: 300px;
            margin: auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f4f4f4;
        }
        .highlight {
            background-color: #dff0d8;
        }
    </style>
</head>
<body>

<h2>Escolha o Mês e o Ano</h2>
<form method="GET">
    <label for="mes">Mês:</label>
    <select name="mes" id="mes">
        <%
            String[] meses = {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
                              "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"};
            int mesSelecionado = request.getParameter("mes") != null ? Integer.parseInt(request.getParameter("mes")) : Calendar.getInstance().get(Calendar.MONTH);
            for (int i = 0; i < 12; i++) {
                out.print("<option value='" + i + "'" + (i == mesSelecionado ? " selected" : "") + ">" + meses[i] + "</option>");
            }
        %>
    </select>

    <label for="ano">Ano:</label>
    <input type="number" name="ano" id="ano" value="<%= request.getParameter("ano") != null ? request.getParameter("ano") : Calendar.getInstance().get(Calendar.YEAR) %>">

    <button type="submit">Gerar Calendário</button>
</form>

<%
    // Pegando parâmetros ou valores padrões
    int ano = request.getParameter("ano") != null ? Integer.parseInt(request.getParameter("ano")) : Calendar.getInstance().get(Calendar.YEAR);
    int mes = mesSelecionado; // já capturado no select

    // Criando o calendário
    Calendar calendario = new GregorianCalendar(ano, mes, 1);
    int primeiroDiaSemana = calendario.get(Calendar.DAY_OF_WEEK) - 1; // Começa no domingo (0)
    int diasNoMes = calendario.getActualMaximum(Calendar.DAY_OF_MONTH);

    // Cabeçalho da Tabela
    String[] diasSemana = {"Dom", "Seg", "Ter", "Qua", "Qui", "Sex", "Sáb"};
%>

<h2>Calendário de <%= meses[mes] %> / <%= ano %></h2>

<table>
    <tr>
        <% for (String dia : diasSemana) { %>
            <th><%= dia %></th>
        <% } %>
    </tr>
    
    <tr>
        <% 
        int diaAtual = 1;
        
        // Preenchendo os primeiros espaços vazios até o primeiro dia
        for (int i = 0; i < primeiroDiaSemana; i++) { 
            out.print("<td></td>");
        }

        // Preenchendo os dias do mês
        for (int i = primeiroDiaSemana; i < 7; i++) { 
            out.print("<td class='highlight'>" + diaAtual++ + "</td>");
        }
        out.print("</tr>");

        // Continuando os dias do mês
        while (diaAtual <= diasNoMes) {
            out.print("<tr>");
            for (int i = 0; i < 7 && diaAtual <= diasNoMes; i++) {
                out.print("<td>" + diaAtual++ + "</td>");
            }
            out.print("</tr>");
        }
        %>
</table>

</body>
</html>

