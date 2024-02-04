<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portal de EDENOR</title>
    <link rel="stylesheet" href="./css/comunes.css">
    <link rel="stylesheet" href="./css/login.css">
    <script src="./js/login.js"></script>
</head>
<body>
    <div id="header">
        <img src="./img/logo2.png" alt="Logo de EDENOR">
        <h2>Login</h2>
    </div>

    <div id="login-form">
        
        <% if (request.getParameter("error") != null) { %>
            <div id="error-message">
                ¡Usuario o contraseña incorrectos! </br>Inténtalo de nuevo.
            </div>
            </br>
        <% } %>

        
        <!-- Formulario de login -->
        <form action="LoginServlet" method="post" onsubmit="return validarUsuario();">
            <label for="username">Usuario:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Contraseña:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Ingresar</button>
        </form>
    </div>

    <div id="new-access-link">
        <p>¿No logra ingresar? <a href="/LoginServlet?accion=solicitarAcceso">Solicitar nuevo acceso</a></p>
    </div>

        
      
</body>
</html>
