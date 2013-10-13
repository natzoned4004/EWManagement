module ApplicationHelper
  def home?
    request.fullpath == '/'
  end
  
  def fixed_footer?
    path = request.fullpath
    path == '/' ||
    path == '/sign_in' ||
    path == '/sign_up'
  end
  
  def edit_artist?
    path = request.fullpath
    path["artists"] && path["edit"]
  end
end