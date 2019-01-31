

  Quando("eu preencho os dados do vôo") do
    flightFinder = FlightFinderPage.new
    flightFinder.selectFlightDetails()
    #Instancia anônima LoginPage.new.faz_login(email, senha)
  end
  
  Quando("seleciono meu vôo") do
    flightSelect = SelectFlightPage.new
    flightSelect.selectFlight()
  end
  

  Então("eu realizo a reserva das passagens pela companhia {string}") do |mensagem|
    book = BookAFlightPage.new
    book.bookFlight()
    expect(page).to have_content mensagem
  end

  Então("meu número de confirmação de vôo é gerado") do
    expect(page).to have_content 'Flight Confirmation'
  end
