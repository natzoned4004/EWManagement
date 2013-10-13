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
end