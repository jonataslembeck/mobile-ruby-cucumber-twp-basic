#language: pt

Funcionalidade: Buttons

Cenario: Clique Simples
    Dado que acesso a tela Click Simples
    Quando faco um click simples
    Entao devo ver o texto: "Isso é um clique simples"

@long
Cenario: Clique Longo
    Dado que acesso a tela Click Longo
    Quando faco um click Longo
    Entao devo ver o botao com o texto: "CLIQUE LONGO OK"