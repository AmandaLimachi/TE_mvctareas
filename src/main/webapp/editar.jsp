<%-- 
    Document   : editar
    Created on : 18 sept. 2021, 19:40:04
   tareas 
--%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
Tareas item=(Tareas) request.getAttribute("miTarea");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body>
        <h1><%= (item.getId() == 0) ? "Nuevo registro":"Editar registro" %></h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="<%= item.getId() %>"/>
            <table>
                <tr>
                    <td>Tarea</td>
                    <td><input type="text" name="tarea" value="<%= item.getTarea()%>" /> </td>
                </tr>
                <tr>
                    <td>Prioridad</td>
                    <td> 
                <select name="prioridad" value="<%= item.getPrioridad()%>">
                <option>Alta</option>
                <option>Media</option>
                <option>Baja</option>
                     </td>
                </tr>
                <tr>
                    <td>Completado</td>
                       <td><input type="radio" name=completado value="Concluido" required>Concluido</td>
                       <td><input type="radio" name=completado value="Pendiente " required>Pendiente</td>

                   
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
