Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30

  # Mapeamento das classes
  # Instanciando a classe Navigator e guardando na variavel @nav
  @nav = Navigator.new
  @messages = Messages.new
  @login = LoginScreen.new
  @cadastro = CadastroScreen.new
  @busca = BuscaScreen.new

  # Clica no botão COMEÇAR
  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64)

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver
end
