module ApplicationHelper
  
  def full_title(page_title)
    if page_title.empty?
      x = "a blog"
    else
      x = page_title
    end
  end
end
