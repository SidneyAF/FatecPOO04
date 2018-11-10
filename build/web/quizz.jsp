<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.poo.quiz.Questao"%>
<%@page import="br.com.poo.quiz.Quiz"%>
<%@page import="br.com.poo.quiz.Usuario"%>
<%@page import="br.com.poo.quiz.BancoUsuarios"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Área do Usuário - <%= session.getAttribute("user")%></title>

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

        <%int i = 0;
            if (request.getParameter("finalizar") != null) {
                int acertos = 0;
                for (Questao q : Quiz.getQuestoes()) {
                    String resposta = request.getParameter(q.getPergunta());
                    if (resposta != null) {
                        if (resposta.equals(q.getResposta())) {
                            acertos++;
                        }
                    }
                }
                Quiz.quantidade++;
                Quiz.soma += (100.0 * ((double) acertos / 10.0));
                BancoUsuarios.setNovaPontuacaoUsuario(String.valueOf(session.getAttribute("user")), acertos);

                response.sendRedirect(request.getContextPath() + "/home.jsp");
            }%>

        <div class="container">
            <br><br>
            <form>
                <%i = 0;%>

                <div class="tab-content" id="pills-tabContent">
                    <%for (Questao questao : Quiz.getQuestoes()) {
                            i++;%>


                    <h4><%=questao.getPergunta()%></h4>
                    <%for (int a = 0; a < questao.getAlternativas().length; a++) {%>
                    <input type="radio" name="<%=questao.getPergunta()%>" value="<%=questao.getAlternativas()[a]%>"/>
                    <%=questao.getAlternativas()[a]%>
                    <hr>
                    <% }%>



                    <%}%>

                </div>

                <br><br>
                <input type="hidden" name="usuarioTestado" value="<%=String.valueOf(session.getAttribute("user"))%>"/>
                <input type="submit" name="finalizar" value="Finalizar"> 
            </form>
            <br><br>

        </div>
        <script>
            $('.btnNext').click(function () {
                $('.nav-tabs > .active').next('li').find('a').trigger('click');
            });

            $('.btnPrevious').click(function () {
                $('.nav-tabs > .active').prev('li').find('a').trigger('click');
            });
        </script>


        <!-- INCLUDE FOOTER -->
        <%@include file="WEB-INF/jspf/includeFooter.jspf" %>
        <!-- INCLUDE FOOTER END -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </body>
</html>