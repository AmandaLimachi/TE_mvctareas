<%-- 
    Document   : index
    Created on : 18 sept. 2021, 19:38:48
    tareas
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Tareas"%>
<%
ArrayList<Tareas>lista=(ArrayList<Tareas>)session.getAttribute("listaalm");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de Tareas</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <br>
        <br>
        <table border="1">
            
                <tr>
                    <th>Id</th>
                    <th>Tarea</th>
                    <th>Prioridad</th>
                    <th>Completado</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                </tr>
                <%
                if(lista != null){
                   for (Tareas item:lista) {
                %>
                       
                 <tr>
                    <td> <%=item.getId()%> </td>
                    <td> <%=item.getTarea()%> </td>
                    <td><%=item.getPrioridad()%></td>
                    <td><%=item.getCompletado()%></td>
                    
                    <td><a href="MainController?op=editar&id=<%=item.getId()%>">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=<%=item.getId()%>"
                           onclick='return confirm("Esta seguro de eliminar Tarea");'>Eliminar</a></td>
                 </tr>
                   <%
                       }
                    }
                %>   
        </table>

    </body>
</html>
