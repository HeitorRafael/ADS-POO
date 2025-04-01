<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revisão de POO</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                overflow: hidden; /* Impede a barra de rolagem */
                height: 100vh;
                background-color: #f4f4f4;
            }
            .movendo-texto {
                position: absolute;
                font-size: 32px;
                font-weight: bold;
                color: #007BFF;
                white-space: nowrap;
                user-select: none;
                animation: moveText 10s infinite ease-in-out;
            }

            @keyframes moveText {
                0% {
                    top: 50%;
                    left: 10%;
                }
                25% {
                    top: 10%;
                    left: 40%;
                }
                50% {
                    top: 80%;
                    left: 60%;
                }
                75% {
                    top: 70%;
                    left: 20%;
                }
                100% {
                    top: 50%;
                    left: 10%;
                }
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/NavBar.jsp" %>
        <div class="movendo-texto">Revisão de POO</div>

        <script>
            // Função para alterar aleatoriamente a posição e o movimento do texto de forma mais suave
            function randomizeMovement() {
                const texto = document.querySelector('.movendo-texto');
                const maxX = window.innerWidth * 0.8 - texto.offsetWidth; // Área de 80% da largura da tela
                const maxY = window.innerHeight * 0.8 - texto.offsetHeight; // Área de 80% da altura da tela

                // Movimentar aleatoriamente o texto
                setInterval(() => {
                    const randomX = Math.random() * maxX;
                    const randomY = Math.random() * maxY;

                    texto.style.left = randomX + 'px';
                    texto.style.top = randomY + 'px';
                }, 2000); // Alterar a posição a cada 2 segundos
            }

            randomizeMovement(); // Chama a função para começar o movimento aleatório
        </script>
    </body>
</html>

