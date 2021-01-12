Dado("que esteja na tela de cadastro") do
  @nav.tap_hamburger
  @nav.tap_by_text("FORMS")
  @nav.tap_by_text("CADASTRO")
end

Quando("informar os dados e submeter") do
  @cadastro.informa_nome("Jonatas Lembeck")
  @cadastro.informa_email("teste@teste.com")
  @cadastro.informa_senha("teste")
  @cadastro.seleciona_perfil("QA")
  @cadastro.clica_cadastrar
end

Entao("deve apresentar a mensagem: {string}") do |mensagem|
  expect(@messages.toast.text).to eql mensagem
end
