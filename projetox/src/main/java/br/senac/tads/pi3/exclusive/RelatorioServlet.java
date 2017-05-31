/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ProdutoDAO;
import br.senac.tads.pi3.models.Produto;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vinicius.fbatista1
 */
@WebServlet(name = "RelatorioServlet", urlPatterns = {"/relatorio"})
public class RelatorioServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException {

        ProdutoDAO dao = new ProdutoDAO();
        List<Produto> produtos;
        produtos = dao.listar();
        request.setAttribute("listaProdutos", produtos);

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("relatorio.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (IOException ex) {

        }
    }
}
