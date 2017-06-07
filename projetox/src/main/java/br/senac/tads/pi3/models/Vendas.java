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
    private int quantidade;

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

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    private Date dataVenda;
    private double valorFinal;

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

    public void setValorFinal(double valorFinal) {
        this.valorFinal = valorFinal;
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

    public double getValorFinal() {
        return valorFinal;
    }

    public Vendas(int idVenda, int idCliente, int idProduto, String nomeProduto, String nomeCliente, int quantidade, Date dataVenda, double valorFinal) {
        this.idVenda = idVenda;
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.nomeCliente = nomeCliente;
        this.quantidade = quantidade;
        this.dataVenda = dataVenda;
        this.valorFinal = valorFinal;
    }

    public Vendas(int idCliente, int idProduto, String nomeProduto, String nomeCliente, int quantidade, Date dataVenda, double valorFinal) {
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeProduto = nomeProduto;
        this.nomeCliente = nomeCliente;
        this.quantidade = quantidade;
        this.dataVenda = dataVenda;
        this.valorFinal = valorFinal;
    }
}
