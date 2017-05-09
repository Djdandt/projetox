/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ClienteDAO;
import br.senac.tads.pi3.models.Cliente;
import java.io.IOException;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author vinicius.fbatista1
 */
@WebServlet(name = "CadastrarClienteServlet", urlPatterns = {"/cadastrarCliente"})
public class CadastrarClienteServlet extends HttpServlet {

  /**
   * Neste exemplo, somente apresenta a tela do formulário
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
	  throws ServletException, IOException {
    RequestDispatcher dispatcher
	    = request.getRequestDispatcher("cadastrarCliente.jsp");
    dispatcher.forward(request, response);
  }

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
    boolean erro = false;

    String nome = request.getParameter("nome");
    String sobrenome = request.getParameter("sobrenome");
    Date dataNasc = Date.valueOf(request.getParameter("dataNasc"));
    String cpf = request.getParameter("cpf");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");
    String estado = request.getParameter("estado");
    String cidade = request.getParameter("cidade");
    String endereco = request.getParameter("endereco");
    String cep = request.getParameter("cep");
    int numCasa = Integer.parseInt(request.getParameter("numCasa"));
    String genero = request.getParameter("genero");
 
    
 
    if (!erro) {
      // Os dados foram preenchidos corretamente
      // Faz o fluxo POST-REDIRECT-GET para a tela de resultados
      Cliente novo = new Cliente(nome, sobrenome, dataNasc, cpf, email, telefone, estado, cidade, endereco, cep, numCasa, genero);
      
      ClienteDAO dao = new ClienteDAO();
      dao.incluirComTransacao(novo);
      
      HttpSession sessao = request.getSession();
      sessao.setAttribute("novoCliente", novo);
      response.sendRedirect("resultado.jsp");
    } else {
      // Tem erro no preenchimento dos dados.
      // Reapresenta o formulário para o usuário indicando os erros.
      RequestDispatcher dispatcher = request.getRequestDispatcher("cadastrarCliente.jsp");
      dispatcher.forward(request, response);
    }
  }

}
