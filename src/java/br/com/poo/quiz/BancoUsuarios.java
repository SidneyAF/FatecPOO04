/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.poo.quiz;


import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/**
 *
 * @author vitor
 */
public class BancoUsuarios {
    
    public static ArrayList<Usuario> usuarios;
    public static ArrayList<Usuario> QuizzesEfetuados;
    public static ArrayList<Usuario> ranking;
    //victor.burghi@gmail.com
    
    public static ArrayList<Double> getListaPontuacoesUsuario(String usuario){
        for (Usuario u : BancoUsuarios.getUsuarios()) {
            if(u.getNmUsuario().equals(usuario))
                return u.getQtPontuacoesUsuario();
        }
        return null;
    }
    
    public static ArrayList<Usuario> retornaRankingOrdenado(){
        Collections.sort(ranking, new Comparator<Usuario>(){
        @Override
        public int compare(Usuario usuario1, Usuario usuario2){
            return Double.compare(usuario1.getMaiorNota(), usuario2.getMaiorNota());
        }
        });
        return null;
    }

    public static void setRanking(Usuario usuario) {
        if(ranking == null){
            ranking = new ArrayList<>();
            ranking.add(usuario);
        }
        ranking.add(usuario);
    }
    
    public static ArrayList<Usuario> getRanking() {
        if(ranking == null){
            ranking = new ArrayList<>();
        }
        return ranking;
    }
    
    public static ArrayList<Usuario> getUsuarios() {
        if(usuarios == null){
            usuarios = new ArrayList<>();
        }
        return usuarios;
    }
    
    public static ArrayList<Usuario> getQuizzesEfetuados(){
        if (QuizzesEfetuados == null){
            QuizzesEfetuados = new ArrayList<>();
        }
        return QuizzesEfetuados;
    }

    public static ArrayList<Usuario> setUsuarios(String nmUsuario, String nmSenhaUsuario) {
        Usuario newUser = new Usuario(nmUsuario,nmSenhaUsuario,0);
        usuarios.add(newUser);
        return usuarios;
    }
    
    public static int getQuantidadeQuizzesEfetuados(String usuario){
        for (Usuario u : BancoUsuarios.getUsuarios()) {
            if(u.getNmUsuario().equals(usuario))
                if(u.qtPontuacoesUsuario == null)
                    return 0;
                else
                    return u.qtPontuacoesUsuario.size();
        }
        return 0;
    }
    
    public static void setNovaPontuacaoUsuario(String usuario, int acertos){
        for (Usuario u : BancoUsuarios.getUsuarios()) {
            if(u.getNmUsuario().equals(usuario)){
                u.setQtPontuacoesUsuario(100.0 * ((double) acertos / 10.0));
                BancoUsuarios.setRanking(u);
                u.setMaiorNota();
            }
        }
    }
    
     public static double obterMediaUser(String usuario){
        for(Usuario u : BancoUsuarios.getUsuarios()){
           if(u.getNmUsuario().equals(usuario)){
                return u.CalculaMediaPontuacao();
           }
        }
        
        return 0;
    }
     public static boolean addQuizEfetuado(Usuario quiz){
        BancoUsuarios.getQuizzesEfetuados().add(quiz);
        return true;
    }
    public static Usuario getUser(int i){
        return BancoUsuarios.getUsuarios().get(i);
    }
    public static Usuario getQuizEfetuado(int i){
        return BancoUsuarios.getQuizzesEfetuados().get(i);
    }
    public static int totalQuizzesEfetuados(){
        return BancoUsuarios.getQuizzesEfetuados().size();
    }
}
