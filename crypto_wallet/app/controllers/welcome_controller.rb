class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails [Cookie]"
    session[:curso] = "Curso de Ruby on Rails [Session]"
    @nome = params[:nome]
  end
end
