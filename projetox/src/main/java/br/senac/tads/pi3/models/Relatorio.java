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
public class Relatorio {
    private int idRelatorio;
    
    private String nmProduto;
    private String nmCliente;
    private String tipoProduto;
    private Date venda;
    private double vlFinal;
    private double valorProduto;
    private int quantProduto;

    public Relatorio(int idRelatorio, String nmProduto, String nmCliente, String tipoProduto, Date venda, double vlFinal, double valorProduto, int quantProduto) {
        this.idRelatorio = idRelatorio;
        this.nmProduto = nmProduto;
        this.nmCliente = nmCliente;
        this.tipoProduto = tipoProduto;
        this.venda = venda;
        this.vlFinal = vlFinal;
        this.valorProduto = valorProduto;
        this.quantProduto = quantProduto;
    }

    public Relatorio(String nmProduto, String nmCliente, String tipoProduto, Date venda, double vlFinal, double valorProduto, int quantProduto) {
        this.nmProduto = nmProduto;
        this.nmCliente = nmCliente;
        this.tipoProduto = tipoProduto;
        this.venda = venda;
        this.vlFinal = vlFinal;
        this.valorProduto = valorProduto;
        this.quantProduto = quantProduto;
    }

    public Relatorio() {
    }

    public void setNmProduto(String nmProduto) {
        this.nmProduto = nmProduto;
    }

    public void setNmCliente(String nmCliente) {
        this.nmCliente = nmCliente;
    }

    public void setTipoProduto(String tipoProduto) {
        this.tipoProduto = tipoProduto;
    }

    public void setVenda(Date venda) {
        this.venda = venda;
    }

    public void setVlFinal(double vlFinal) {
        this.vlFinal = vlFinal;
    }

    public void setValorProduto(double valorProduto) {
        this.valorProduto = valorProduto;
    }

    public void setQuantProduto(int quantProduto) {
        this.quantProduto = quantProduto;
    }

    public String getNmProduto() {
        return nmProduto;
    }

    public String getNmCliente() {
        return nmCliente;
    }

    public String getTipoProduto() {
        return tipoProduto;
    }

    public Date getVenda() {
        return venda;
    }

    public double getVlFinal() {
        return vlFinal;
    }

    public double getValorProduto() {
        return valorProduto;
    }

    public int getQuantProduto() {
        return quantProduto;
    }
}
