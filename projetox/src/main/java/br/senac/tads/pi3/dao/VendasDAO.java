package br.senac.tads.pi3.dao;

import br.senac.tads.pi3.models.Vendas;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
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

        String sql = "SELECT * WHERE idVenda = ?";

        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idVenda);
            ResultSet resultados = stmt.executeQuery();

            while (resultados.next()) {
                int id = resultados.getInt("idVenda");
                int idCliente = resultados.getInt("idCliente");
                int idProduto = resultados.getInt("idProduto");
                String produto = resultados.getString("nomeProduto");
                String cliente = resultados.getString("nomeCliente");
                int quantidade = resultados.getInt("quantidade");
                Date venda = resultados.getDate("dataVenda");
                double valorFinal = resultados.getDouble("valorFinal");
                v = new Vendas(id, idCliente, idProduto, produto, cliente, quantidade, venda, valorFinal);
                break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return v;
    }

    public List<Vendas> listar() {
        Statement stmt = null;
        Connection conn = null;

        String sql = "SELECT * FROM Venda";

        List<Vendas> lista = new ArrayList<>();
        try {
            conn = obterConexao();
            stmt = conn.createStatement();
            ResultSet resultados = stmt.executeQuery(sql);
            DateFormat formatadorData = new SimpleDateFormat("dd/MM/yyyy");
            
            while (resultados.next()) {
                int id = resultados.getInt("idVenda");
                int idCliente = resultados.getInt("idCliente");
                int idProduto = resultados.getInt("idProduto");
                String produto = resultados.getString("nomeProduto");
                String cliente = resultados.getString("nomeCliente");
                int quantidade = resultados.getInt("quantidade");
                Date venda = resultados.getDate("dataVenda");
                double valorFinal = resultados.getDouble("valorFinal");
                
                Vendas vendas = new Vendas(id, idCliente, idProduto, produto, cliente, quantidade, venda, valorFinal);
                lista.add(vendas);
            }

        } catch (SQLException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lista;
    }

    public void incluirComTransacao(Vendas vendas) {
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "INSERT INTO Venda "
                + "(nomeProduto, nomeCliente, quantidade, valorFinal) "
                + "VALUES (?, ?, ?, ?)";
        try {
            conn = obterConexao();

            conn.setAutoCommit(false); // Permite usar transacoes para multiplos comandos no banco de dados
            stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, vendas.getNomeProduto());
            stmt.setString(1, vendas.getNomeCliente());
            stmt.setInt(1, vendas.getQuantidade());
            stmt.setDouble(2, vendas.getValorFinal());

            stmt.executeUpdate();

            // ResultSet para recuperar o ID gerado automaticamente no banco de dados.
            // Neste exemplo, o ID é gerado automaticamente.
            ResultSet generatedKeys = stmt.getGeneratedKeys();
            if (generatedKeys.next()) {
                int idNovo = generatedKeys.getInt(1);
                vendas.setIdVenda(idNovo);
                System.out.println("***** ID NOVO CADASTRADO: " + String.valueOf(idNovo));

                // Executar próximos INSERTs USANDO O ID novo.
            }
            conn.commit();
        } catch (SQLException ex) {
            try {
                // Caso ocorra algum erro, tenta desfazer todas as ações realizadas no BD.
                if (conn != null & !conn.isClosed()) {
                    conn.rollback();
                }
            } catch (SQLException ex1) {
                Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            try {
                // Caso ocorra algum erro, tenta desfazer todas as ações realizadas no BD.
                if (conn != null & !conn.isClosed()) {
                    conn.rollback();
                }
            } catch (SQLException ex1) {
                Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void incluir(Vendas vendas) {
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "INSERT INTO Venda "
                + "(nomeProduto, nomeCliente, quantidade, valorFinal) "
                + "VALUES (?, ?, ?, ?)";
        try {
            conn = obterConexao();

            conn.setAutoCommit(false); // Permite usar transacoes para multiplos comandos no banco de dados
            stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, vendas.getNomeProduto());
            stmt.setString(1, vendas.getNomeCliente());
            stmt.setInt(1, vendas.getQuantidade());
            stmt.setDouble(2, vendas.getValorFinal());
            stmt.executeUpdate();
            //System.out.println("Registro incluido com sucesso.");

        } catch (SQLException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(VendasDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }
}