

  Dado('que eu acesso a página principal') do
    visit 'http://www.newtours.demoaut.com/'
  end
  
  Quando('eu faço login com {string} e {string}') do |usuario, senha|
    @usuario = usuario
    login = LoginPage.new
    login.doLogin(usuario, senha)
    #Instancia anônima LoginPage.new.faz_login(usuario, senha)
  end
  
  Então('devo ser autenticado com sucesso') do
    #expect(page).to have_content @usuario
  end
  
  Então('devo ver a seguinte mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
  end