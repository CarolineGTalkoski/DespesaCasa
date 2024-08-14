/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.despesascasa;

/**
 *
 * @author Aluno
 */
public class Despesas {
    
    private String data;
    private String categoria;
    private String descricao;
    private String local;
    private double valor;
    private double parcelas;
    private double valorparcela;
    
    public Despesas(String data, String categoria, String descricao, String local, double valor, double parcelas){
        this.data = data;
        this.categoria = categoria;
        this.descricao = descricao;
        this.local = local;
        this.valor = valor;
        this.parcelas = parcelas;
           }

    /**
     * @return the data
     */
    public String getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     * @return the categoria
     */
    public String getCategoria() {
        return categoria;
    }

    /**
     * @param categoria the categoria to set
     */
    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    /**
     * @return the descricao
     */
    public String getDescricao() {
        return descricao;
    }

    /**
     * @param descricao the descricao to set
     */
    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    /**
     * @return the local
     */
    public String getLocal() {
        return local;
    }

    /**
     * @param local the local to set
     */
    public void setLocal(String local) {
        this.local = local;
    }

    /**
     * @return the valor
     */
    public double getValor() {
        return valor;
    }

    /**
     * @param valor the valor to set
     */
    public void setValor(double valor) {
        this.valor = valor;
    }

    /**
     * @return the parcelas
     */
    public double getParcelas() {
        return parcelas;
    }

    /**
     * @param parcelas the parcelas to set
     */
    public void setParcelas(double parcelas) {
        this.parcelas = parcelas;
    }

    /**
     * @return the valorparcela
     */
    public double getValorparcela() {
        this.valorparcela = valor/parcelas;
        return valorparcela;
    }

    /**
     * @param valorparcela the valorparcela to set
     */
    public void setValorparcela(double valorparcela) {
        this.valorparcela = valor/parcelas;
    }
    
    
    
}
