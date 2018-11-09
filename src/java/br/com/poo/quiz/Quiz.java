package br.com.poo.quiz;

import java.util.ArrayList;
import java.util.Collections;

public class Quiz {
    public static int quantidade;
    public static double soma;
    private static ArrayList<Questao> questoes;

    public static double getMedia(){
        return (soma / (double)quantidade)*10;
    }
    
    
    private static ArrayList<Questao> setQuestoes(){
        
        Questao primeiraQuestao = new Questao(
        "Qual o nome do Jornalista supostamente esquartejado em embaixada na Turquia?",
                "Jamal Khashoggi",
                new String[] {"Jamal Khashoggi",
                    "Abul Naadin",
                  "Mohammad bin Salman",
                  "Mohammad bin Kashoggi"}
        );
        questoes.add(primeiraQuestao);
       Questao segundaQuestao =  new Questao(
        "Que Pais encontra dificuldades internas para fechar uma proposta da de saida da união europeia:",
                "Reino Unido",
                new String[] {"Polonia", 
                    "Italia",
                    "Reino Unido",
                    "Pruscia"}
        );
        questoes.add(segundaQuestao);
        
        Questao terceiraQuestao = new Questao(
        "Qual o nome do novo acordo comercial entre Estadus Unidos, Mexico, Canadá:",
                "AEUMC",
                new String[] {"NAFTA", 
                    "AMCY",
                    "AEUMC"}
        );
        questoes.add(terceiraQuestao);
        
        Questao quartaQuestao = new Questao(
        "ALem dos Estados Unidos, qual destes paises já possi embaixada em Jesusalém?",
                "Guatemala",
                new String[] {"Borundi", 
                    "Guatemala", 
                    "Brasil"}
        );
        questoes.add(quartaQuestao);
        Questao quintaQuestao = new Questao(
        "Qual destes presidentes foi comparado a um personagem dos senhor dos aneis e ameaçou represalias por isto?",
                "Recep Tayyip Erdogan",
                new String[] {"Recep Tayyip Erdogan",
                    "Vladimir Vladimirovitch Putin",
                    "Bashar al-Assad"}
        );
        questoes.add(quintaQuestao);
     
        Questao sextaQuestao = new Questao(
        "Qual pais está perto de alterar seu nome para facilitar entrada na Otan e na União Europeia:",
                "Macedonia",
                new String[] {"Burundi", 
                    "Macedonia",
                    "Taiwan"}
        );
        questoes.add(sextaQuestao);
        
        Questao setimaQuestao = new Questao(
        "Qual destes paises foi o primeiro pais (de primeiro mundo) a legalizar a maconha para fins recreativos em todo territorio nascional:",
                "Canadá",
                new String[] {"Estads Unidos",
                    "China",
                    "Canadá"}
        );
        questoes.add(setimaQuestao);
        Questao oitavaQuestao = new Questao(
        "Qual o nome do vice primeiro ministro da Arábia Saudita, conhecido por suas ideas 'liberais' mas atitudes controversas:",
                "Mohammad bin Salman",
                new String[] {"Mohammad bin Salman", 
                    "Salman bin Abdulaziz Al Saud",
                    "Muhammad bin Nayef"}
        );
        questoes.add(oitavaQuestao);
        
        Questao nonaQuestao = new Questao(
        "Em qual casa de poder os Democratas venceram nesta eleição de 2018:",
                "Deputados",
                new String[] {"Deputados", 
                    "Senado",
                    "Lords"}
        );
        questoes.add(nonaQuestao);
        
        Questao decimaQuestao = new Questao(
        "Qual o primeiro pais historicamente visitado pelos presidentes brasileiros ápos sua eleiçâo:",
                "Argentina",
                new String[] {"Estados Unidos",
                    "China",
                    "Argentina"}
        );
        questoes.add(decimaQuestao);
        
        Collections.shuffle(questoes);
        return questoes;
        
    }
    
    public static ArrayList<Questao> getQuestoes(){
        if (questoes == null){
            questoes = new ArrayList<>();
            questoes = setQuestoes();
        }
    return questoes;
    }
    
    
}
