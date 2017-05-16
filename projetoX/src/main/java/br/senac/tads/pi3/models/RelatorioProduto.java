/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.models;

import java.sql.Date;

/**
 *
 * @author vinicius.fbatista1
 */
public class RelatorioProduto {

    private int idProduto;
    private String nomeProduto;
    private Double valor;
    private int quantidade;
//    private Date data;

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public RelatorioProduto() {
    }

    
    public RelatorioProduto(int idProduto, String nomeProduto, Double valor, int quantidade) {
        this.idProduto = idProduto;
        this.valor = valor;
        this.quantidade = quantidade;
    }

    public int getIdProduto() {
        return idProduto;
    }

    public void setIdProduto(int idProduto) {
        this.idProduto = idProduto;
    }

    public Double getValor() {
        return valor;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

}
