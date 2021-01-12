Dado("que estou na tela de Busca") do
  @nav.tap_by_text("BUSCA")
end

Quando("pesquisar por {string}") do |vingador|
  @busca.busca_vingador vingador
end

Entao("deve apresentar a mensagem {string}") do |mensagem|
  expect(@busca.get_vingadores_encontrados.text).to eql mensagem
end

Entao("apresentar o vingador {string}") do |vingador|
  expect(@busca.get_nome_vingador(1).text).to eql vingador
end

Entao("apresentar os vingadores") do |table|
  vingadores = table.hashes
  volta = 1

  vingadores.each do |vingador|
    expect(@busca.get_nome_vingador(volta).text).to eql vingador["nome"]
    volta += 1
  end
end
