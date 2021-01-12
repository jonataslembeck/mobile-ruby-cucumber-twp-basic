class BuscaScreen
  def busca_vingador(vingador)
    find_element(id: "io.qaninja.android.twp:id/etSearch").send_keys(vingador)
  end

  def get_vingadores_encontrados
    return find_element(id: "io.qaninja.android.twp:id/tvResults")
  end

  def get_nome_vingador(index)
    return find_element(xpath: "//androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[#{index}]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.TextView[@index=0]")
  end
end
