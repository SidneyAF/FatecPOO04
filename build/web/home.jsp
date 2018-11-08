<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Collections"%>
<%-- 
    Document   : home
    Created on : 07/11/2018, 22:13:24
    Author     : safju
--%>

<%@page import="br.com.fatecpg.quiz.Jogadores"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <% if (request.getParameter("nome") != null) {
                session.setAttribute("usuario", request.getParameter("nome"));
                response.sendRedirect("quiz.jsp");
            }%>
        <h1>Home</h1>

        <h3>Ultimos jogos</h3>
        <table>
            <thead>
                <tr>
                    <th>Nome</th>
                    <th>Pontuacao</th>
                </tr>
            </thead>
            <%for (Jogadores j : Db.getJogadores()) {%>
            <%int i = Db.getJogadores().indexOf(j);%>
            <tr>
                <td><%=j.getNome()%></td>
                <td><%=j.getPontuacao()%></td>
            </tr>
            <%}%>
        </table>
        <hr>
        <br>
        <form>
            Nome <input type="text" name="nome" required>
            <input type="submit" name="login" value="Entrar">
        </form>
    </body>
</html>
