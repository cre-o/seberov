module ApplicationHelper

  def refinery_get_page(path: nil, id: nil)
    Refinery::Page.find_by_path_or_id(path, id)
  end

  def js_void
    'javascript:void(0)'
  end
end
