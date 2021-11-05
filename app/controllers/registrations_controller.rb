class RegistrationsController < Devise::RegistrationsController

  private
  def sign_up_params
    params.require(:user).permit(:nameLast, :nameFirst, :username, :email, :password, :confirm_password, :language)
  end

    def account_update_params
    params.require(:user).permit(:nameLast, :nameFirst, :username, :email, :password, :current_password, :confirm_password, :language)
  end

end
