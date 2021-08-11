module ApplicationHelper
	def title(title)
	  if title.empty?
	  	@page_title = "Rails App"
	  else
	  	@page_title = title
	  end 
	end
end
