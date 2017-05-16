/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.dao;

import br.senac.tads.pi3.models.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author vinicius.fbatista1
 */
public class ProdutoDAO extends ConexaoBD {

    public Produto obterProduto(int idProduto) {
        PreparedStatement stmt = null;
        Connection conn = null;
        Produto p = null;

        String sql = "SELECT * FROM Produto WHERE idProduto = ?";

        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, idProduto);
            ResultSet resultados = stmt.executeQuery();

            while (resultados.next()) {
                int id = resultados.getInt("idProduto");
                String nome = resultados.getString("Nome");
                int codigo = resultados.getInt("Codigo");
                String tipo = resultados.getString("Tipo");
                int quantidade = resultados.getInt("Quantidade");
                String descricao = resultados.getString("Descricao");
                double valor = resultados.getDouble("Valor");
                p = new Produto(id, nome, codigo, tipo, quantidade, descricao, valor);
                break;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return p;

    }

    public List<Produto> listar() {
        Statement stmt = null;
        Connection conn = null;

        String sql = "SELECT * FROM Produto";

        List<Produto> lista = new ArrayList<>();
        try {
            conn = obterConexao();
            stmt = conn.createStatement();
            ResultSet resultados = stmt.executeQuery(sql);

            //     DateFormat formatadorData = new SimpleDateFormat("dd/MM/yyyy");
            while (resultados.next()) {
                int id = resultados.getInt("idProduto");
                String nome = resultados.getString("Nome");
                int codigo = resultados.getInt("Codigo");
                String tipo = resultados.getString("Tipo");
                int quantidade = resultados.getInt("Quantidade");
                String descricao = resultados.getString("Descricao");
                double valor = resultados.getDouble("Valor");

                Produto produto = new Produto(id, nome, codigo,
                        tipo, quantidade, descricao, valor);
                lista.add(produto);
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            // Código colocado aqui para garantir que a conexão com o banco
            // seja sempre fechada, independentemente se executado com sucesso
            // ou erro.
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return lista;
    }

    public void incluirComTransacao(Produto produto) {
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "INSERT INTO Produto "
                + "(Nome, Codigo, Tipo, Quantidade, Descricao, Valor) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try {
            conn = obterConexao();

            conn.setAutoCommit(false); // Permite usar transacoes para multiplos comandos no banco de dados
            stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getCodigo());
            stmt.setString(3, produto.getTipo());
            stmt.setInt(4, produto.getQuantidade());
            stmt.setString(5, produto.getDescricao());
            stmt.setDouble(6, produto.getValor());

            stmt.executeUpdate();

            // ResultSet para recuperar o ID gerado automaticamente no banco de dados.
            // Neste exemplo, o ID é gerado automaticamente.
            ResultSet generatedKeys = stmt.getGeneratedKeys();
            if (generatedKeys.next()) {
                int idNovo = generatedKeys.getInt(1);
                produto.setId(idNovo);
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
                Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            try {
                // Caso ocorra algum erro, tenta desfazer todas as ações realizadas no BD.
                if (conn != null & !conn.isClosed()) {
                    conn.rollback();
                }
            } catch (SQLException ex1) {
                Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void incluir(Produto produto) {
        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "INSERT INTO Produto "
                + "(Nome, Codigo, Tipo, Quantidade, Descricao, Valor) "
                + "VALUES (?, ?, ?, ?, ?, ?)";
        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getCodigo());
            stmt.setString(3, produto.getTipo());
            stmt.setInt(4, produto.getQuantidade());
            stmt.setString(5, produto.getDescricao());
            stmt.setDouble(6, produto.getValor());
            stmt.executeUpdate();
            //System.out.println("Registro incluido com sucesso.");

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public void excluirProduto(int id) {

        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "DELETE FROM Produto WHERE (idProduto=?)";

        try {

            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            stmt.execute();

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    public void atualizarProduto(Produto produto) {

        PreparedStatement stmt = null;
        Connection conn = null;

        String sql = "UPDATE Produto SET Nome=?, Codigo=?, Tipo=?, Quantidade=?, Descricao=?, Valor=? "
                + " WHERE (idProduto=?)";

        try {
            conn = obterConexao();
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setInt(2, produto.getCodigo());
            stmt.setString(3, produto.getTipo());
            stmt.setInt(4, produto.getQuantidade());
            stmt.setString(5, produto.getDescricao());
            stmt.setDouble(6, produto.getValor());

            stmt.execute();

        } catch (SQLException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);

        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException ex) {
                    Logger.getLogger(ProdutoDAO.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

}
