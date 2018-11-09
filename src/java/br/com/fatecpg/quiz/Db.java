/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.quiz;

import java.util.ArrayList;

/**
 *
 * @author safju
 */
public class Db {

    public static ArrayList<Jogadores> jogadores;

    public static ArrayList<Questoes> getTeste() {
        ArrayList<Questoes> teste = new ArrayList<>();
        teste.add(new Questoes("3+1", "4", new String[]{"4", "3", "5"}));
        teste.add(new Questoes("3+2", "5", new String[]{"2", "3", "5"}));
        teste.add(new Questoes("3+3", "6", new String[]{"2", "6", "5"}));
        teste.add(new Questoes("3+4", "7", new String[]{"2", "3", "7"}));
        teste.add(new Questoes("3+5", "8", new String[]{"8", "3", "5"}));
        return teste;
    }

    public static ArrayList<Jogadores> getJogadores() {
        if (jogadores == null) {
            jogadores = new ArrayList<>();
            Jogadores jogador1 = new Jogadores();
            Jogadores jogador2 = new Jogadores();
            Jogadores jogador3 = new Jogadores();

            jogador1.setDados("João", "100");
            jogador2.setDados("Maria", "80");
            jogador3.setDados("Jorge", "70");

            jogadores.add(jogador1);
            jogadores.add(jogador2);
            jogadores.add(jogador3);
        }
        return jogadores;
    }
}
