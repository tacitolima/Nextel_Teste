#language:pt

Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um Usuário
    Posso acessar o sistema com meu usuario e senha previamente cadastrados

Contexto: Página principal
        Dado que eu acesso a página principal

    @login
    Cenario: Usuário deve ser autorizado
        
        Quando eu faço login com "mercury" e "mercury"
        Então devo ser autenticado com sucesso 
        E devo ver a seguinte mensagem "SIGN-OFF"

    @tent
    Cenario: Tentativa de login falha

        Quando eu faço login com "mercury" e "1234"
        Então devo ver a seguinte mensagem "Welcome back to Mercury Tours!"

    @logout
    Cenario: Tentativa de login com Logout

        Quando eu faço login com "mercury" e "mercury"
        Então devo ver a seguinte mensagem "SIGN-OFF"
      