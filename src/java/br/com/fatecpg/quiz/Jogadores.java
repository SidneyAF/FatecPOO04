/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

/**
 *
 * @author safju
 */
public class Jogadores{
    private String nome, pontuacao;

    public void setDados(String nome, String pontuacao){
        this.setNome(nome);
        this.setPontuacao(pontuacao);
    }
    
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the pontuacao
     */
    public String getPontuacao() {
        return pontuacao;
    }

    /**
     * @param pontuacao the pontuacao to set
     */
    public void setPontuacao(String pontuacao) {
        this.pontuacao = pontuacao;
    }

}
