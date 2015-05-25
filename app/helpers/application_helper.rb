module ApplicationHelper

  def refinery_get_page(path: nil, id: nil)
    Refinery::Page.find_by_path_or_id(path, id)
  end

  def js_void
    'javascript:void(0)'
  end

  def price_list_url
    case I18n.locale
    when :en then '/files/sh_press_EN.pdf'
    when :cs then '/files/sh_press_CZ.pdf'
    when :ru then '/files/sh_press_RU.pdf'
    end
  end
end
