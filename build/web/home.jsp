<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.poo.quiz.Quiz"%>
<%@page import="br.com.poo.quiz.Usuario"%>
<%@page import="br.com.poo.quiz.BancoUsuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto Quizz</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/includeMenu.jspf" %>
        <!-- INCLUDE MENU END -->



        <%if (!(session.getAttribute("user") == null)) {%>
        <a href="quizz.jsp" class="btn btn-primary btn-lg btn-block">INICIAR NOVO QUIZZ</a>
        <%}%>

        <div class="container">
            <br><br>
            <div class="row">
                <div class="col-md-6">
                    <div class="table-ranking">
                        <h2 class="text-center ">Ultimas partidas</h2><hr class='bottom-line3'><br><br>
                        <table class="table table-hover table-responsive">
                            <tr>
                                <th scope="row">Nome do jogador</th>
                                <th>Pontuação</th>
                            </tr>
                            <%
                                DecimalFormat df = new DecimalFormat("#,###.00");
                                for (Usuario usuario : BancoUsuarios.getUsuarios()) {%>
                            <tr>

                                <td><%=usuario.getNmUsuario()%></td>
                                <td><%=df.format(usuario.CalculaMediaPontuacao())%></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
                <div class="col-md-6">
                    <div id="table2">
                        <h2 class="text-center ">Ranking</h2><hr class='bottom-line3'><br><br>
                        <table class="table table-hover table-responsive">
                            <tr>
                                <th scope="row" >Nome do jogador</th>
                                <th>Pontuação</th>
                            </tr>
                            <%
                                for (Usuario usuario : BancoUsuarios.getRanking()) {%>
                            <tr>

                                <td><%=usuario.getNmUsuario()%></td>
                                <td><%=usuario.getMaiorNota()%></td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
            </div>  
        </div>
        <br><br>
        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/includeFooter.jspf" %>
        <!-- INCLUDE FOOTER END -->

        <!-- WoW Js-->
        <script type="text/javascript" src="js/wow.js"></script>
        <script>
            new WOW().init();
        </script>
    </body>
</html>
