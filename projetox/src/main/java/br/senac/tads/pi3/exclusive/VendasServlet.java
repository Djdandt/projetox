/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ClienteDAO;
import br.senac.tads.pi3.dao.VendasDAO;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author danilo.kwatanabe
 */
@WebServlet(name = "VendasServlet", urlPatterns = {"/vendas"})
public class VendasServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException {

        VendasDAO dao = new VendasDAO();
        
        ClienteDAO daoc = new ClienteDAO();
        
        request.setAttribute("listaVendas", dao.listar());
        
        request.setAttribute("listaCliente", daoc.listar());
        
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("vendas.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (IOException ex) {

        }
    }

}
