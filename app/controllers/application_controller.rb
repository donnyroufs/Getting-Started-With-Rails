class ApplicationController < ActionController::Base
    http_basic_authenticate_with name: "iamchets", password: "root", except: [:index, :show]
 
  def index
    @articles = Article.all
  end
end
