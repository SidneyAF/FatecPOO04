<%@page import="br.com.poo.quiz.BancoUsuarios"%>
<%@page import="br.com.poo.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entrar</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/includeMenu.jspf" %>
        <!-- INCLUDE MENU END -->

        <div class="card border-secondary mb-3" style="max-width: 20rem;margin: 0 auto;margin-top: 100px;">
            <div class="card-body">
                <h1 class="display-4 text-center">Cadastrar</h1><br>

                <%
                    if (request.getParameter("usuario") != null) {
                        String nome = request.getParameter("usuario");
                        Usuario usuario = new Usuario(nome, 0);
                        BancoUsuarios.getUsuarios().add(usuario);
                        response.sendRedirect("telalogin.jsp");
                    }
                %>
                <form>
                    Usuario <input type="text" name="usuario" required><br><br>
                    <center><input type="submit" value="Cadastrar" class="btn btn-primary btn-lg"></button></center>
                </form>
            </div>
        </div>


        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/includeFooter.jspf" %>
        <!-- INCLUDE FOOTER END -->
    </body>
</html>


