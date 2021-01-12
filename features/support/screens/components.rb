class Navigator
  def tap_hamburger
    hamburguer = "//android.widget.ImageButton[@content-desc='Open navigation drawer']"
    find_element(xpath: hamburguer).click
  end

  def list
    return find_element(id: "io.qaninja.android.twp:id/rvNavigation")
  end

  def tap_by_text(target)
    find_element(xpath: "//*[@text='#{target}']").click
  end
end

class Messages
  def toast
    return find_element(xpath: "//android.widget.Toast")
  end

  def message_error
    return find_element(id: "io.qaninja.android.twp:id/textinput_error")
  end

  def dialog(index)
    find_element(id: "io.qaninja.android.twp:id/dialogInfoTitle")
    return find_element(xpath: "//android.widget.TextView[@index=#{index}]")
  end

end
