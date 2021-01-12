#language: pt

Funcionalidade: Busca


    Cenario: Busca de um Vingador
        Dado que estou na tela de Busca
        Quando pesquisar por "Hulk"
        Entao deve apresentar a mensagem "1 vingadores encontrados"
            E apresentar o vingador "Hulk"

    @info
    Cenario: Busca de Varios Vingadores
        Dado que estou na tela de Busca
        Quando pesquisar por "Home"
        Entao deve apresentar a mensagem "2 vingadores encontrados"
        E apresentar os vingadores
            | nome           |
            | Homem de Ferro |
            | Homem Aranha   |