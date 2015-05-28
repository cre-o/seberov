module ApplicationHelper

  def refinery_get_page(path: nil, id: nil)
    Refinery::Page.find_by_path_or_id(path, id) rescue Refinery::Page.new
  end

  def js_void
    'javascript:void(0)'
  end

  def en_locale?
    I18n.locale == :en
  end

  def ru_locale?
    I18n.locale == :ru
  end

  def cs_locale?
    I18n.locale == :cs
  end

  def price_list_url
    case I18n.locale
    when :en then '/files/sh_press_EN.pdf'
    when :cs then '/files/sh_press_CZ.pdf'
    when :ru then '/files/sh_press_RU.pdf'
    end
  end

  def change_lang_hack(name)
    "/#{name.to_s}" + request.env['PATH_INFO'].gsub(/\/en|\/cs\/ru/, '.')
  end
end
