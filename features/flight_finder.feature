#language:pt

Funcionalidade: ChooseFlight

Contexto: Login
         Quando que eu acesso a página principal
         E eu faço login com "mercury" e "mercury"

    @start
    Cenario: Flight
    
        Quando eu preencho os dados do vôo
        E seleciono meu vôo
        Então eu realizo a reserva das passagens pela companhia 'Blue Skies' 
        E meu número de confirmação de vôo é gerado