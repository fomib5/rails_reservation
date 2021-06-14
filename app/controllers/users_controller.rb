class UsersController < ApplicationController
  
  def account
    @user = current_user
  end
  
  def profile
    @user = current_user
  end
  
  def update
    @user = current_user
    if @user.update(params.require(:user).permit(:image, :name, :introduction))
      redirect_to :users_profile
    end
  end
end
