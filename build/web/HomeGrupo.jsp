<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="br.com.poo.quiz.BancoUsuarios"%>
<%@page import="br.com.poo.quiz.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto Quizz</title>

        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- INCLUDE CSS END-->
    </head>
    <body id="home">
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/includeMenu.jspf" %>
        <!-- INCLUDE MENU END -->

        <!--CABEÇALHO-->
        <header >
            <div class="container-fluid">
                <div> <a href="quizz.jsp"   class="btn btn-success btn-group-lg btn-lg"><h4>Iniciar Quizz</h4></a></div>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="table-ranking">
                    <h2 class="text-center ">Ultimas partidas</h2><hr class='bottom-line3'><br><br>
                    <table class="table table-hover table-responsive">
                        <tr>
                            <th scope="row">Nome do jogador</th>
                            <th>Pontuação</th>
                        </tr>
                        <%for (Usuario usuario : BancoUsuarios.getUsuarios()) {%>
                        <tr>

                            <td><%=usuario.getNmUsuario()%></td>
                            <td><%=usuario.CalculaMediaPontuacao()%></td>
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
    <br><hr>
    <!-- GRUPO -->
    <section  id="team">
        <div class="container">
            <br>
            <br>
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Grupo</h2>
                </div>
            </div>
            <br/>
            <br/>
            <div class="row">
                <div class="col-md-4">
                    <div class="team-member">
                        <h4>Cassiano Lucas</h4>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <h4>Gustavo Henrique</h4>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <h4>Sidney de Almeida</h4>
                    </div>
                </div>

            </div>
    </section><br/>
    <!-- WoW Js-->
    <script type="text/javascript" src="js/wow.js"></script>
    <script>
        new WOW().init();
    </script>
</body>
</html>


