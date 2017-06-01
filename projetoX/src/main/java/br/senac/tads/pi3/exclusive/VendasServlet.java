package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.ProdutoDAO;
import br.senac.tads.pi3.models.Produto;
import java.io.IOException;
import java.util.List;
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

         ProdutoDAO dao = new ProdutoDAO();
        List<Produto> produtos = dao.listar();
        

//        request.setAttribute("listaProduto", daoP.listar());
//        
//        request.setAttribute("listaCliente", daoC.listar());

        request.setAttribute("nomeProduto", produtos);

        RequestDispatcher dispatcher
                = request.getRequestDispatcher("vendas.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (IOException ex) {

        }
    }

}
