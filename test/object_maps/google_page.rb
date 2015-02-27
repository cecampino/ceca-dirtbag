class GoogleSearch < SitePrism::Page

  element :search_text, "input[id='gbqfq']"
  element :search_button, "button[id='gbqfb']"
  element :total_results_value, "div[id='resultStats']"
  elements :result_links_on_page, "div[class='srg']"

  def search_for(value)
    search_text.set(value)
    search_button.click
  end

  def get_total_results_value
    value=total_results_value.text.split(" ")[2]
    return value
  end

  def get_results_quantity_on_page
    value = result_links_on_page.count.to_i
    return value
  end

end
