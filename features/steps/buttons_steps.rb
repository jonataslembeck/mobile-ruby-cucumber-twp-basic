Dado("que acesso a tela Click Simples") do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE SIMPLES")
end

Quando("faco um click simples") do
  find_element(:id, "io.qaninja.android.twp:id/short_click").click
end

Entao("devo ver o texto: {string}") do |texto|
  expect(@messages.toast.text).to eql texto
end

Dado("que acesso a tela Click Longo") do
  @nav.tap_hamburger
  @nav.tap_by_text("BOTÕES")
  @nav.tap_by_text("CLIQUE LONGO")
end

# Irá pressionar o botão, esperar por 2 segundos e soltar
Quando("faco um click Longo") do
  @button = find_element(:id, "io.qaninja.android.twp:id/long_click")
  Appium::TouchAction.new.press(element: @button).wait(2000).release.perform
end

Entao("devo ver o botao com o texto: {string}") do |texto|
  expect(@button.text).to eql texto
end
