<%-- 
    Document   : filtros
    Created on : 3 feb. 2024, 00:08:36
    Author     : robertosl
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filtros</title>
    <link rel="stylesheet" href="./css/comunes.css">
    <link rel="stylesheet" href="./css/filtros.css">
    <link rel="stylesheet" href="./css/botones.css">
    <script src="./js/filtros.js"></script>
</head>
<body>

    <div id="header">
        <img src="./img/logo2.png" alt="Logo de EDENOR">
        <h1>Filtros</h1>
    </div>

    <div id="tabla-filtros">
        <form action="ServletFiltros" method="post">
            <table>
                <thead>
                    <tr>
                        <th>Procesos</th>
                        <th>Info</th>
                        <th>Pendiente</th>
                        <th>En Tratamiento</th>
                        <th>Despachado</th>
                        <th>Con Anomalía</th>
                        <th>Cerrado</th>
                        <th>Cancelado</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Ingreso MT General</td>
                        <td><img id="info-icon" src="./img/info.png" alt="informacion del filtro..."></img></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="1"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="2"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="3"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="4"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="5"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso MT General" data-estado="6"></div></td>
                    </tr>
                    <tr>
                        <td>Ingreso Forzado MT</td>
                        <td><img id="info-icon" src="./img/info.png" alt="informacion del filtro..."></img></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="1"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="2"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="3"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="4"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="5"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Forzado MT" data-estado="6"></div></td>
                    </tr>
                    <tr>
                        <td>Ingreso Programado MT</td>
                        <td><img id="info-icon" src="./img/info.png" alt="informacion del filtro..."></img></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="1"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="2"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="3"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="4"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="5"></div></td>
                        <td><div class="estado-control" data-proceso="Ingreso Programado MT" data-estado="6"></div></td>
                    </tr>
                    <!-- Repite estas filas para los demás procesos -->
                </tbody>
            </table>

            <div id="botones">
                <button name="accion" value="salir" id="salir-button">Salir</button>
                <button name="accion" value="cancelar" id="cancelar-button">Cancelar</button>
                <button name="accion" value="simular" id="simular-button">Simular</button>
                <button name="accion" value="confirmar" id="confirmar-button">Confirmar</button>
            </div>
        </form>
    </div>



</body>
</html>

