class AmazonSearch < SitePrism::Page

  element :search_text, "input[id='twotabsearchtextbox']"
  element :search_button, :xpath, "//div[@class='nav-submit-button nav-sprite']/input[@class='nav-submit-input' and @title='Go']"
  element :total_results_value, "h2[id='s-result-count']"
  elements :result_links_on_page, :xpath, "//ul[@id='s-results-list-atf']/li"


  def search_for(value)
    search_text.set(value)
    search_button.click
  end

  def get_total_results_value
    value=total_results_value.text.split(" ")[2].delete(',').to_i
    return value
  end

  def get_quantity_of_results_on_page
    value = result_links_on_page.size
    return value
  end

end
