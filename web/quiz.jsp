
<%@page import="br.com.fatecpg.quiz.Jogadores"%>
<%@page import="br.com.fatecpg.quiz.Db"%>
<%@page import="br.com.fatecpg.quiz.Questoes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quiz</title>
    </head>
    <body>
        <h1>Quiz</h1>
        <%
            //Verificando se o usuário está logado para realizar o Quiz.
            String usuario = (String) session.getAttribute("usuario");
            if (usuario == null) {
                response.sendRedirect("home.jsp");
            } else {
                out.print("Bem vindo, " + usuario + "</br>");
                if (request.getParameter("enviarTeste") != null) {
                    //Calculando a pontuação do usuário
                    int sum = 0;
                    for (Questoes q : Db.getTeste()) {
                        String respostaUsuario = request.getParameter(q.getTitulo());
                        if (respostaUsuario.equals(q.getResposta())) {
                            sum++;
                        }
                    }
                    String acertos = Double.toString(100.0 * ((double) sum / (double) Db.getTeste().size()));
                    Jogadores jogador = new Jogadores();
                    jogador.setDados(usuario, acertos);
                    Db.getJogadores().add(jogador);
        %>
        <h1>Resultado do teste: <%= acertos%>%</h1>
        <% }
            }%>
        <a href="sair.jsp"><button>Sair</button></a><a href="home.jsp"><button>Voltar</button></a>
        <form>
            <% for (Questoes q : Db.getTeste()) {%>
            <h3><%=q.getTitulo()%></h3>
            <% for (int i = 0; i < q.getAlternativas().length; i++) {%>
            <input type="radio" name="<%=q.getTitulo()%>" value="<%=q.getAlternativas()[i]%>"/>
            <%=q.getAlternativas()[i]%>
            <% } %>
            <hr>
            <% }%>
            <br>
            <input type="submit" name="enviarTeste" value="Enviar">
        </form>
    </body>
</html>
