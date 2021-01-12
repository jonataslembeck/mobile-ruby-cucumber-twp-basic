Dado("que acesso a tela dialogs") do
  @nav.tap_hamburger
  @nav.tap_by_text("DIALOGS")
end

Quando("visualizo as Informacoes") do
  @nav.tap_by_text("INFO")
end

Entao("devo visualizar o titulo {string}") do |titulo|
  expect(@messages.dialog(1).text).to eql titulo
end

Entao("devo visualizar a mensagem {string}") do |mensagem|
  expect(@messages.dialog(2).text).to eql mensagem
end
