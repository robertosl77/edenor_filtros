<%-- 
    Document   : filtros
    Created on : 3 feb. 2024, 00:08:36
    Author     : robertosl
--%>
<%@page import="dto.FiltrosDTO"%>
<%@page import="java.util.ArrayList"%>
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
    
    <%
        //Dejo preparado una matriz para cuando pueda tomar valores de oracle
        ArrayList<FiltrosDTO> filtrosList= new ArrayList<>();
        FiltrosDTO f;
        //
        f= new FiltrosDTO();
        f.setId(1);
        f.setProceso("Ingreso MT General");
        f.setInfo("Este filtro es general no se recomienda modificar!.");
        f.setPendiente(true);
        f.setTratamiento(true);
        f.setDespachado(true);
        f.setAnomalia(true);
        f.setCerrado(false);
        f.setCancelado(false);
        filtrosList.add(f);
        //
        f= new FiltrosDTO();
        f.setId(2);
        f.setProceso("Ingreso Forzado MT");
        f.setInfo("Este filtro se encarga de los Estados en los Forzados MT.");
        f.setPendiente(false);
        f.setTratamiento(true);
        f.setDespachado(true);
        f.setAnomalia(true);
        f.setCerrado(false);
        f.setCancelado(false);
        filtrosList.add(f);
        //
        f= new FiltrosDTO();
        f.setId(3);
        f.setProceso("Ingreso Programado MT");
        f.setInfo("Este filtro se encarga de los Estados en los Programados MT.");
        f.setPendiente(false);
        f.setTratamiento(true);
        f.setDespachado(true);
        f.setAnomalia(true);
        f.setCerrado(false);
        f.setCancelado(false);
        filtrosList.add(f);
        
        request.setAttribute("filtrosList", filtrosList);
    %>

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
                    <% for (FiltrosDTO filtro : filtrosList) { %>
                        <tr>
                            <td><%= filtro.getProceso() %></td>
                            <td><img id="info-icon" src="./img/info.png" alt="<%= filtro.getInfo() %>"></img></td>
                            <td><input type="checkbox" id="miCheckbox" name="pendiente" <%= filtro.isPendiente()? "checked" : "" %>></td>
                            <td><input type="checkbox" id="miCheckbox" name="tratamiento" <%= filtro.isTratamiento()? "checked" : "" %>></td>
                            <td><input type="checkbox" id="miCheckbox" name="despachado" <%= filtro.isDespachado()? "checked" : "" %>></td>
                            <td><input type="checkbox" id="miCheckbox" name="anomalia" <%= filtro.isAnomalia()? "checked" : "" %>></td>
                            <td><input type="checkbox" id="miCheckbox" name="cerrado" <%= filtro.isCerrado()? "checked" : "" %> disabled></td>
                            <td><input type="checkbox" id="miCheckbox" name="cancelado" <%= filtro.isCancelado()? "checked" : "" %> disabled></td>
                        </tr>
                    <% } %>                    
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
