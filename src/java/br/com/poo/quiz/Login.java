package br.com.poo.quiz;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Renan
 */
public class Login extends HttpServlet {

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String usuario = request.getParameter("usuario");
		String senha = request.getParameter("senha");
                if(BancoUsuarios.getUsuarios().size()==0){
                    RequestDispatcher rd = request.getRequestDispatcher("cadastro.jsp");
                    out.println("<script>alert('Nenhum usuário cadastrado.')</script>");
                    rd.include(request, response);
                }else{
                    for(Usuario user : BancoUsuarios.getUsuarios()){
                        if(usuario.equals(user.getNmUsuario())&&senha.equals(user.getNmSenhaUsuario())){	
                            HttpSession session = request.getSession(true); // iniciando sessão
                            session.setAttribute("user", usuario);
                            response.sendRedirect("home.jsp");
                        } 
                    }
                    RequestDispatcher rd = request.getRequestDispatcher("telalogin.jsp");
                    out.println("<script>alert('Usuário e/ou senha incorretos.')</script>");
                    rd.include(request, response);
                }

	
    }
    
}