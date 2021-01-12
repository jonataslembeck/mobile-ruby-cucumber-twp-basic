Dado("que acesso a tela de Login") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("LOGIN")
end

Quando("submeto minhas credenciais:") do |table|
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end

Então("devo ver a notificação: {string}") do |notice|
  #log(get_source) # Obtem o código xml da tela
  expect(@messages.toast.text).to eql notice
end

Quando("informo o email {string} e senha {string}") do |email, senha|
  @login.sign_in(email, senha)
end

Entao("devo ver a mensagem {string}") do |mensagem|
  expect(@messages.message_error.text).to eql mensagem
end
