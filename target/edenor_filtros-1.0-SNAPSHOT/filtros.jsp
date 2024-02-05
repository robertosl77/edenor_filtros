<%-- 
    Document   : filtros
    Created on : 3 feb. 2024, 00:08:36
    Author     : robertosl
--%>
<%@page import="dto.DocumentosDTO"%>
<%@page import="funciones.FiltrosUtil"%>
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
    <script src="./js/comunes.js"></script>
    <script src="./js/filtros.js"></script>
</head>
<body>

    <div id="header">
        <img src="./img/logo2.png" alt="Logo de EDENOR">
        <h1>Filtros</h1>
    </div>
    
    <%
        //Dejo preparado una matriz para cuando pueda tomar valores de oracle
        ArrayList<FiltrosDTO> filtrosOriginales= new ArrayList<>();
        ArrayList<FiltrosDTO> filtrosSimulados= new ArrayList<>();
        ArrayList<FiltrosDTO> filtrosList = FiltrosUtil.generarListaFiltros();
        ArrayList<DocumentosDTO> documentosLista = FiltrosUtil.generarListaDocumentos();
        
        if (request.getParameter("accion")==null) {
            filtrosOriginales= filtrosList;
            filtrosSimulados= filtrosList;
        } else if (request.getParameter("accion").equals("load")){
            filtrosOriginales= filtrosList;
            filtrosSimulados= filtrosList;
        } else if (request.getParameter("accion").equals("simula")) {
            //temporal
            filtrosList.get(0).setPendiente(false);
            filtrosList.get(1).setPendiente(true);
            filtrosSimulados= filtrosList;
            //
            filtrosList=filtrosSimulados;
        }

        request.setAttribute("filtrosList", filtrosList);
        request.setAttribute("filtrosOriginales", filtrosOriginales);
        request.setAttribute("filtrosSimulados", filtrosSimulados);
        request.setAttribute("documentosLista", documentosLista);
        
    %>

    <div id="tabla-filtros">
        <%
            //Mensajes que duran unos segundos
            if (request.getParameter("accion")!=null){
                if (request.getParameter("accion").equals("simula")){
                    %>
                    <div id='status-message'>
                        <div id="lista-filtros">
                            <h3>Total de clientes afectados: 2.029...</h3>
                            </br>
                            <ul>
                                <% for (DocumentosDTO documentos : documentosLista) { %>
                                    <li>
                                        <strong>ID:</strong> <%= documentos.getId()%><br>
                                        <strong>Número de Documento:</strong> <%= documentos.getNro_documento()%><br>
                                        <strong>Corte:</strong> <%= documentos.getCorte()%><br>
                                        <strong>Estado:</strong> <%= documentos.getEstado()%><br>
                                        <strong>Afectaciones:</strong> <%= documentos.getAfectaciones()%><br>
                                    </li>
                                <% } %>
                            </ul>
                        </div>
                    </div>
                    <%
                }
            }
        %>        
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
