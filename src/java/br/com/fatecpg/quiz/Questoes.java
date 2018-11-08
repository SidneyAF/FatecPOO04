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
public class Questoes {

    private String titulo, resposta;
    private String[] alternativas;

    public Questoes(String titulo, String resposta, String[] alternativas) {
        this.titulo = titulo;
        this.resposta = resposta;
        this.alternativas = alternativas;
    }

    public String getTitulo() {
        return titulo;
    }

    /**
     * @param titulo the titulo to set
     */
    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    /**
     * @return the questao
     */
    public String getResposta() {
        return resposta;
    }

    /**
     * @param resposta the questao to set
     */
    public void setResposta(String resposta) {
        this.resposta = resposta;
    }

    /**
     * @return the resposta
     */
    public String[] getAlternativas() {
        return alternativas;
    }

    /**
     * @param alternativas the resposta to set
     */
    public void setAlternativas(String[] alternativas) {
        this.alternativas = alternativas;
    }

}
