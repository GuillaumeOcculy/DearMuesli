class WelcomeController < ApplicationController
  def index
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  	 flash[:success] = "Email enregistré !"
  	 redirect_to root_path
    else
      redirect_to root_path
    end
  end


  def mix
  end

  def show
  end
  
  private
  def user_params
    params.require(:user).permit(:email)
  end
end
