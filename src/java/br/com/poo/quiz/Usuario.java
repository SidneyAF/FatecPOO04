package br.com.poo.quiz;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class Usuario {

    private String nmUsuario;
    public ArrayList<Double> qtPontuacoesUsuario;
    private double maiorNota;

   
    public Usuario(String nmUsuario, double mediaNota) {
        this.nmUsuario = nmUsuario;
    }

    public void setMaiorNota() {
        if (qtPontuacoesUsuario == null) {
            qtPontuacoesUsuario = new ArrayList<>();
        }

        this.maiorNota = Collections.max(qtPontuacoesUsuario);
    }

    public double getMaiorNota() {
        return this.maiorNota;
    }

    public double CalculaMediaPontuacao() {
        if (qtPontuacoesUsuario == null) {
            return 0;
        }
        double soma = 0;
        for (Double pontuacao : qtPontuacoesUsuario) {
            soma += pontuacao;
        }
        return soma / qtPontuacoesUsuario.size();
    }

    public double RetornaUltimaPontuacao() {
        if (qtPontuacoesUsuario == null) {
            return 0;
        }
        return qtPontuacoesUsuario.lastIndexOf(qtPontuacoesUsuario);
    }

    public ArrayList<Double> getQtPontuacoesUsuario() {
        if (qtPontuacoesUsuario == null) {
            qtPontuacoesUsuario = new ArrayList<>();
            return qtPontuacoesUsuario;
        }
        return qtPontuacoesUsuario;
    }

    public void setQtPontuacoesUsuario(double pontuacao) {
        if (qtPontuacoesUsuario == null) {
            qtPontuacoesUsuario = new ArrayList<>();
            this.qtPontuacoesUsuario.add(pontuacao);
        }
        this.qtPontuacoesUsuario.add(pontuacao);
    }

    public String getNmUsuario() {
        return nmUsuario;
    }

    public void setNmUsuario(String nmUsuario) {
        this.nmUsuario = nmUsuario;
    }
}
