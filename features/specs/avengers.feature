#language: pt

Funcionalidade: Avengers

Cenario: Remover o Capitao America
    Dado que acesso a tela Avengers
    Quando apago o Capitao America
    Entao deve ver a mensagem: "Item removido! (posição = 0)"