/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.tads.pi3.models;

/**
 *
 * @author Vinicius Ferreira Batista
 */
public class Produto {

    
    private int id;
    private String nome;
    private int codigo;
    private int quantidade;
    private double valor;
    private String descricao;
    private String tipo;

    public Produto() {

    }

    public Produto(String nome, int codigo, String tipo, int quantidade, String descricao, double valor) {
        this.nome = nome;
        this.codigo = codigo;
        this.tipo = tipo;
        this.quantidade = quantidade;
        this.descricao = descricao;
        this.valor = valor;
    }

    public Produto(int id, String nome, int codigo, String tipo, int quantidade, String descricao, double valor) {
        this.id = id;
        this.nome = nome;
        this.codigo = codigo;
        this.tipo = tipo;
        this.quantidade = quantidade;
        this.descricao = descricao;
        this.valor = valor;

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
}
