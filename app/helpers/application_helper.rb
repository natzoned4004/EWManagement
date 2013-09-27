module ApplicationHelper
  def home?
    request.fullpath == '/'
  end
end