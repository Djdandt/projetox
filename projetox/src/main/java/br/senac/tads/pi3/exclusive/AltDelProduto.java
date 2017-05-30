/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ProdutoDAO;
import br.senac.tads.pi3.models.Produto;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Vinicius Ferreira Batista
 */
@WebServlet(name = "AltDelProduto", urlPatterns = {"/AltDelProduto"})
public class AltDelProduto extends HttpServlet {

    /**
     * Neste exemplo, somente apresenta a tela do formulário
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(AltDelProduto.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        HttpSession sessao = request.getSession();
        request.setAttribute("usuarioLogado", sessao.getAttribute("usuarioLogado"));
        boolean erro = false;

        String nome = request.getParameter("nome");
        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        double valor = Double.parseDouble(request.getParameter("valor"));
        String funcionario = request.getParameter("funcio");
        String descricao = request.getParameter("descricao");
        String tipo = request.getParameter("tipo");

        if (!erro) {
            // Os dados foram preenchidos corretamente
            // Faz o fluxo POST-REDIRECT-GET para a tela de resultados

            if (request.getParameter("excluir") != null) {
                ProdutoDAO dao = new ProdutoDAO();
                int id = Integer.parseInt(request.getParameter("excluir"));
                Produto novo = new Produto(id, nome, quantidade, valor, funcionario, new Date());
                dao.adicionarExclusao(novo);
                dao.excluirProduto(id);

                sessao.setAttribute("excluindo", nome);
                response.sendRedirect("resultado_1.jsp");

            } else if (request.getParameter("alterar") != null) {
               
                Produto produto = new Produto();
                produto.setNome(nome);
                produto.setQuantidade(quantidade);
                produto.setValor(valor);
                produto.setDescricao(descricao);
                produto.setTipo(tipo);
                
                ProdutoDAO dao = new ProdutoDAO();
//                dao.atualizarProduto(produto);
                response.sendRedirect("alterarProd.jsp");

            }

        } else {
            // Tem erro no preenchimento dos dados.
            // Reapresenta o formulário para o usuário indicando os erros.
            RequestDispatcher dispatcher = request.getRequestDispatcher("cadastrarProduto.jsp");
            dispatcher.forward(request, response);
        }
    }

}
