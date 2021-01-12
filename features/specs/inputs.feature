#language: pt

Funcionalidade: Inputs

    Cenario: Selecionando Radio Button
        Dado que acesso a tela Botoes de Radio
        Quando eu escolho a opcao Ruby
        Entao esta opcao deve ser marcada

    Cenario: Marcando um CheckBox
        Dado que acesso a tela Checkbox
        Quando eu marco a opcao Ruby
        Entao esta opcao deve estar marcada

    Cenario: Marcando variaos CheckBox
        Dado que acesso a tela Checkbox
        Quando eu marco as seguintes techs:
            | tech            |
            | Ruby            |
            | Java            |
            | Python          |
            | Javascript      |
            | C#              |
            | Robot Framework |
        Entao todas essas opcoes devem estar marcadas