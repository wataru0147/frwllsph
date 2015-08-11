module ApplicationHelper
	 #returns the pagetitle on a per page basis
  def full_title(page_title = ' ')
    base_title = "4WallsPH"
    if page_title.empty?
      base_title
    else
      "#{page_title} | #{base_title}"
    end
  end
end
