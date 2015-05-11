module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def description(page_description)
    content_for(:description) { page_description }
  end

  def keywords(page_keywords)
    content_for(:keywords) { page_keywords }
  end


  def description_content
    content_for?(:description) ? yield(:description) : 'empty description'
  end

  def js_void
    'javascript:void(0)'
  end
end
