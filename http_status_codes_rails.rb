# instead of saying return 404error you can use
@page = Page.find_by_permalink(params[:permalink])
raise ActiveRecord::RecordNotFound, "Page not found" if @page.nil?