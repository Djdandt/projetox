/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.dao;

import br.senac.tads.pi3.models.Relatorio;
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
public class RelatorioDAO extends ConexaoBD {

    public Relatorio obterRelatorio(int idRelatorio) {
        PreparedStatement stmt = null;
        Connection conn = null;
        Relatorio r = null;

        String sql = "SELECT idRelatorio, nmproduto, nmCliente, tipoProduto, venda, vlFinal, valorProduto, quantProduto"
                + " FROM Relatorio WHERE idRelatorio = ?";
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idRelatorio);
            ResultSet resultados = stmt.executeQuery();

            while (resultados.next()) {
                int id = resultados.getInt("idRelatorio");
                String nome = resultados.getString("nmProduto");
                String produto = resultados.getString("nmCliente");
                String tipoProduto = resultados.getString("tipoProduto");
                Date venda = resultados.getDate("venda");
                double valorFinal = resultados.getDouble("vlFinal");
                double valorProduto = resultados.getDouble("valorProduto");
                int quantProduto = resultados.getInt("quantProduto");
                r = new Relatorio(id, nome, produto, tipoProduto, venda, valorFinal, valorProduto, quantProduto);
                break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(RelatorioDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return r;
    }
}
