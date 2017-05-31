package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ClienteDAO;
import br.senac.tads.pi3.dao.ProdutoDAO;
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
        
        ProdutoDAO daoP = new ProdutoDAO();
        
        ClienteDAO daoC = new ClienteDAO();
        
        VendasDAO dao = new VendasDAO();
        
        request.setAttribute("listaProduto", daoP.listar());
        
        request.setAttribute("listaCliente", daoC.listar());
        
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("vendas.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (IOException ex) {

        }
    }

}