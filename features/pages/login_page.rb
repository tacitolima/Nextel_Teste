class AccountPage < SitePrism::Page
  element :account_name, "input[name='userName']"
  element :account_password, "input[name='password']"
end

# class LoginPage
#     include Capybara::DSL
#     def doLogin(usuario, senha) 
#         find('input[name=userName').set usuario
#         find('input[name=password').set senha
#         click_button 'Sign-In'
#     end
# end