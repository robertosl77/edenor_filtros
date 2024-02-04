<%-- 
    Document   : construccion
    Created on : 3 feb. 2024, 05:02:41
    Author     : robertosl
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>En Construcción</title>
    <link rel="stylesheet" href="./css/comunes.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column; /* Cambié la dirección del diseño a columna */
            align-items: center;
            justify-content: center;
            height: 100vh;
            box-sizing: border-box;
        }

        #header {
            background: linear-gradient(to right, #0078d4, #8cff00);
            color: white;
            text-align: left;
            padding: 10px;
            padding-left: 10px;
            width: 100%;
            position: fixed; /* Cambié a posición fija */
            top: 0; /* La barra estará en la parte superior */
            z-index: 1; /* Añadido para estar encima de otros elementos */
        }

        #construction-message {
            text-align: center;
            margin-top: 60px; /* Añadido espacio para separar la barra del contenido */
        }

        #construction-image {
            max-width: 40%;
            height: auto;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div id="header">
        <img src="./img/logo2.png" alt="Logo de EDENOR">
        <h2>En Construccion</h2>
    </div>
    
    <div id="construction-message">
        <h1>¡En Construcción!</h1>
        <img id="construction-image" src="./img/construccion.jpg" alt="En Construcción">
        <p>Estamos trabajando en mejorar esta página.</p>
    </div>
</body>
</html>
