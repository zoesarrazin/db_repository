class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
    def new
  end
  
  def create
    a = User.new
    a.name = params['name']
    a.email = params['email']
    a.save
    redirect_to"/user/{a.id}"
  end
  
  def show
    @user = User.find_by_id(params['id'])
  end

  end
