<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.poo.quiz.BancoUsuarios"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.poo.quiz.Usuario"%>
<%@page import="br.com.poo.quiz.Quiz"%>
<%@page import="br.com.poo.quiz.Questao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meu Perfil</title>
        <!--INCLUDE CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <!-- INCLUDE CSS END-->
    </head>
    <body>
        <!-- INCLUDE MENU -->
        <%@include file="WEB-INF/jspf/includeMenu.jspf" %>
        <!-- INCLUDE MENU END -->


        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("telalogin.jsp");
            }

            

        %>

        <pre style="text-align: center">
        </pre>

        <!-- <div style="text-align: center">

             <table style="text-align: center" class="table table-hover table-responsive textCenter">
                 <tr>
                     <th><h2>Ultimas dez notas</h2></th>
        <%-- int contador = 0;
        for(Double pontuacao : BancoUsuarios.getListaPontuacoesUsuario(String.valueOf(session.getAttribute("user")))){
            contador++;
            if(contador>=10){break;}
            %>
            <td><h2><%=contador%> - <%=pontuacao%></h2></td>
            <%
        }
        
        
        
        --%>
        </tr>
    </table>
</div>-->
    <center><h3>Bem vindo, <%= session.getAttribute("user")%> !</h3></center>
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="table-ranking">
                    <h2 class="text-center ">Média das minhas Notas</h2><hr class='bottom-line2'>
                    <table class="table table-hover table-responsive">
                        <%  String color = "black";
                            double mediaGeral = BancoUsuarios.obterMediaUser(String.valueOf(session.getAttribute("user")));
                            //out.print(mediaGeral);
                            //double mediaGeral = BancoUsuarios.getUsuarios().get(0).CalculaMediaPontuacao();
                            //double mediaGeral = 0;
                            DecimalFormat df = new DecimalFormat("#,###.00");
                            if (BancoUsuarios.getQuantidadeQuizzesEfetuados(String.valueOf(session.getAttribute("user"))) != 0) {%>
                        <tr>
                            <td style="text-align: center">

                                <h3><%=df.format(mediaGeral)%></h3>
                            </td>
                        </tr>
                        <%} else {%>
                        <h3 class="text-center">Não foi encontrado qualquer quiz realizado, vamos lá tentar fazer um!<br></h3>
                        <br><br>
                        <a href="quizz.jsp" class="btn btn-primary btn-lg btn-block">INICIAR NOVO QUIZZ</a>
                        <%}%>
                    </table>
                </div>
            </div>
            <div class="col-md-6">
                <div id="table2">
                    <h2 class="text-center ">Ultimas dez notas</h2><hr class='bottom-line3'>
                    <table class="table table-hover table-responsive">

                        <% int contador = 0;
                            for (Double pontuacao : BancoUsuarios.getListaPontuacoesUsuario(String.valueOf(session.getAttribute("user")))) {
                                contador++;
                                if (contador >= 10) {
                                    break;
                                }
                        %>
                        <tr>
                            <td style="text-align: center"><%--=contador--%><%=pontuacao%>/100</td>
                        </tr>
                        <%}%>

                    </table>
                </div>
            </div>
        </div> 
    </div>

    <!-- INCLUDE FOOTER -->
    <%@include file="WEB-INF/jspf/includeFooter.jspf" %>
    <!-- INCLUDE FOOTER END -->
</body>
</html>
