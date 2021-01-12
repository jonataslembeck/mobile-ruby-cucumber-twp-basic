#language: pt

Funcionalidade: Login

    Cenario: Login com sucesso

        Dado que acesso a tela de Login
        Quando submeto minhas credenciais:
            | email | eu@papito.io |
            | senha | qaninja      |
        Então devo ver a notificação: "Show! Suas credenciais são validas."

    @esquema
    Esquema do Cenario: Email ou senha em branco
        Dado que acesso a tela de Login
        Quando informo o email "<email>" e senha "<senha>"
        Entao devo ver a mensagem "<mensagem>"

        Exemplos:
            | email       | senha   | mensagem                         |
            |             | qaninja | Por favor, informe um email bom! |
            | teste@teste |         | Oops! Senha em branco!           |