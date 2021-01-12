Dado("que acesso a tela Avengers") do
  @nav.tap_hamburger
  @nav.tap_by_text("AVENGERS")
  @nav.tap_by_text("LISTA")
end

# porcentagem.org
#     Deve ser passado em %
#     start_x = posicao inicial na horizontal
#     start_y = posicao inicial na vertical
#     offset_x = posicao final na horizontal
#     offset_y = posicao final na vertical
#     duration = tempo de duracao da acao em milessgundos
Quando("apago o Capitao America") do
  find_element(id: "io.qaninja.android.twp:id/rvList") # Aguarda aparece a lista de avengers
  coord = { start_x: 0.93, start_y: 0.18, offset_x: 0.48, offset_y: 0.18, duration: 2000 }
  Appium::TouchAction.new.swipe(coord).perform

  find_element(id: "io.qaninja.android.twp:id/btnRemove").click
end

Entao("deve ver a mensagem: {string}") do |message|
  snakebar_text = find_element(id: "io.qaninja.android.twp:id/snackbar_text")
  expect(snakebar_text.text).to eql message
end
