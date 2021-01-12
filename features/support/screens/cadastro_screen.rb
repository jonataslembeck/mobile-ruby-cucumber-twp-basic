class CadastroScreen
  def informa_nome(nome)
    find_element(id: "io.qaninja.android.twp:id/etUsername").send_keys(nome)
  end

  def informa_email(email)
    find_element(id: "io.qaninja.android.twp:id/etEmail").send_keys(email)
  end

  def informa_senha(senha)
    find_element(id: "io.qaninja.android.twp:id/etPassword").send_keys(senha)
  end

  def seleciona_perfil(perfil)
    find_element(id: "io.qaninja.android.twp:id/spinnerJob").click
    find_element(xpath: "//android.widget.TextView[@text='#{perfil}']").click
  end

  def clica_cadastrar
    find_element(id: "io.qaninja.android.twp:id/btnSubmit").click
  end
end
