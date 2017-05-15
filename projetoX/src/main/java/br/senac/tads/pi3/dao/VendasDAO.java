/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.dao;

import br.senac.tads.pi3.models.Vendas;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author danilo.kwatanabe
 */
public class VendasDAO extends ConexaoBD {

    public Vendas obterVendas(int idVenda) {
        PreparedStatement stmt = null;
        Connection conn = null;
        Vendas v = null;

        String sql = "SELECT idVenda, idCliente, idProduto, nomeCliente, nomeProduto, dataVenda, valorFinal FROM Venda"
                + "WHERE idVenda = ?";

        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idVenda);
            ResultSet resultados = stmt.executeQuery();

            while (resultados.next()) {
                int id = resultados.getInt("idVenda");
                int idCliente = resultados.getInt("idCliente");
                int idProduto = resultados.getInt("idProduto");
                String nome = resultados.getString("nomeCliente");
                String produto = resultados.getString("nomeProduto");
                Date venda = resultados.getDate("dataVenda");
                double valorFinal = resultados.getDouble("valorFinal");
                v = new Vendas(id, idCliente, idProduto, nome, produto, venda, valorFinal);
                break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(FuncionarioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return v;
    }
}
