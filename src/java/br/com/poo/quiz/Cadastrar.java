/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package br.com.poo.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Cadastrar extends HttpServlet{
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
		String senha2 = request.getParameter("senha2");
                
                if(senha.equals(senha2)){
                    BancoUsuarios.getUsuarios();
                    BancoUsuarios.setUsuarios(usuario, senha);
                    RequestDispatcher rd = request.getRequestDispatcher("telalogin.jsp");
                    out.println("<script>alert('Cadastro Finalizado!')</script>");
                    rd.include(request, response);
                }else{
                    RequestDispatcher rd = request.getRequestDispatcher("cadastro.jsp");
                    out.println("<script>alert('Senhas não correspondem!')</script>");
                    rd.include(request, response);
                }
    }
    
}
