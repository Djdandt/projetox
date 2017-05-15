/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.exclusive;

import br.senac.tads.pi3.dao.FuncionarioDAO;
import br.senac.tads.pi3.models.Funcionario;
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
 * @author Vinicius Ferreira Batista
 */
@WebServlet(name = "FuncionarioServlet", urlPatterns = {"/funcionarios"})
public class FuncionarioServlet extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException {

        FuncionarioDAO dao = new FuncionarioDAO();
        List<Funcionario> funcionarios = dao.listar();

        request.setAttribute("listaFuncionarios", funcionarios);
        RequestDispatcher dispatcher
                = request.getRequestDispatcher("funcionarios.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (IOException ex) {

        }
    }
}
