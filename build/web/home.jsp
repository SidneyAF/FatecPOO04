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
        <style>
            th{color:black;}
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <%@include file="bootstrap.jspf"%>
        <title>Home</title>
    </head>
    <body>
        <% if (request.getParameter("nome") != null) {
                session.setAttribute("usuario", request.getParameter("nome"));
                response.sendRedirect("quiz.jsp");
            }%>
            
             <div class="jumbotron">
                 <h1 class="display-3">POO Projeto 04</h1>
        <h3>Score</h3>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th color="black">Nome</th>
                            <th>Pontuação</th>
                       
                        </tr>
                    </thead>
                     </thead>
            <%for (Jogadores j : Db.getJogadores()) {%>
            <%int i = Db.getJogadores().indexOf(j);%>
             <tr class="table-secondary">
                <td><%=j.getNome()%></td>
                <td><%=j.getPontuacao()%></td>
            </tr>
            <%}%>
                    
                </table>
        </div>
        
            <div style="position:absolute;width: 100%;padding:30px 10%;">
            <form>
                <fieldset>
     
              <div class="form-group row">       
             <label class="col-form-label" for="inputDefault" color-fon>Nome:</label>       
             <input type="text" name="nome" required class="form-control">
            <input type="submit" name="login" value="Entrar" class="btn btn-primary">
              </div>
         </fieldset>
            </form>
            </div>
    </body>
</html>
