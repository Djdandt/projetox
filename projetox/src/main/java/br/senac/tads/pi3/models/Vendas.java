package br.senac.tads.pi3.models;

import java.sql.Date;

/**
 *
 * @author danilo.kwatanabe
 */
public class Vendas {

    private int idVenda;

    private int idCliente;
    private int idProduto;
    private String nomeProduto;
    private String nomeCliente;
    private String quantidade;
    private double valor;
    private Date dataVenda;

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(String quantidade) {
        this.quantidade = quantidade;
    }

    public Vendas() {
    }

    public void setIdVenda(int idVenda) {
        this.idVenda = idVenda;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public void setDataVenda(Date dataVenda) {
        this.dataVenda = dataVenda;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getIdVenda() {
        return idVenda;
    }

    public int getIdCliente() {
        return idCliente;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public Date getDataVenda() {
        return dataVenda;
    }

    public double getValor() {
        return valor;
    }

    public Vendas(int idVenda, int idCliente, int idProduto, String nomeProduto, String nomeCliente, String quantidade, Date dataVenda, double valor) {
        this.idVenda = idVenda;
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.nomeCliente = nomeCliente;
        this.quantidade = quantidade;
        this.dataVenda = dataVenda;
        this.valor = valor;
    }

    public Vendas(int idCliente, int idProduto, String nomeProduto, String nomeCliente, String quantidade, Date dataVenda, double valor) {
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.nomeCliente = nomeCliente;
        this.quantidade = quantidade;
        this.dataVenda = dataVenda;
        this.valor = valor;
    }
    
    public Vendas(String nomeProduto, String nomeCliente, String quantidade, double valor){
        this.nomeProduto = nomeProduto;
        this.nomeCliente = nomeCliente;
        this.quantidade = quantidade;
        this.valor = valor;
    }
}
