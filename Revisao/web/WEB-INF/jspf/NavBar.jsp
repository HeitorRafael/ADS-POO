<!-- Arquivo: NavBar.jspf -->
<div class="navbar">
    <ul>
        <li><a href="index.jsp">Home</a></li>
        <li><a href="Primos.jsp">Números Primos</a></li>
        <li><a href="fibonacci.jsp">Fibonacci</a></li>
        <li><a href="soma.jsp">Soma</a></li>
    </ul>
</div>

<style>
    .navbar {
        width: 100%;
        background-color: #007BFF;
        padding: 15px 0;
        display: flex;
        justify-content: center;
        align-items: center;
        position: fixed;
        top: 0;
        left: 0;
        z-index: 1000;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }
    .navbar ul {
        list-style: none;
        padding: 0;
        margin: 0;
        display: flex;
        gap: 25px;
    }
    .navbar li {
        display: inline;
    }
    .navbar a {
        text-decoration: none;
        color: white;
        font-size: 20px;
        font-weight: bold;
        padding: 12px 18px;
        transition: background 0.3s, transform 0.2s;
    }
    .navbar a:hover {
        background-color: #0056b3;
        border-radius: 8px;
        transform: scale(1.1);
    }
    body {
        padding-top: 60px; /* Para evitar sobreposição com o conteúdo */
    }
</style>

