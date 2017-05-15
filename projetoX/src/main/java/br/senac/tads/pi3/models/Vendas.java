/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
    private String nomeCliente;
    private String nomeProduto;
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

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
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

    public String getNomeCliente() {
        return nomeCliente;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public Date getDataVenda() {
        return dataVenda;
    }

    public double getValorFinal() {
        return valorFinal;
    }

    public Vendas(int idVenda, int idCliente, int idProduto, String nomeCliente, String nomeProduto, Date dataVenda, double valorFinal) {
        this.idVenda = idVenda;
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeCliente = nomeCliente;
        this.nomeProduto = nomeProduto;
        this.dataVenda = dataVenda;
        this.valorFinal = valorFinal;
    }

    public Vendas(int idCliente, int idProduto, String nomeCliente, String nomeProduto, Date dataVenda, double valorFinal) {
        this.idCliente = idCliente;
        this.idProduto = idProduto;
        this.nomeCliente = nomeCliente;
        this.nomeProduto = nomeProduto;
        this.dataVenda = dataVenda;
        this.valorFinal = valorFinal;
    }
}
