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
    redirect_to "http://ruby-on-rails-114444.nitrousapp.com:3000/user/#{a.id}"
  end
  
  def show
    @user = User.find_by_id(params['id'])
  end
  
  def index
   @user = User.all
end
  
  def destroy
    a = User.find_by_id(params['id'])
    a.destroy
end

end
