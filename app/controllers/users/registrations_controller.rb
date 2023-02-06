class Users::RegistrationsController < Devise::RegistrationsController
  before_action :check_recaptcha_v2, only: [:create]

  private

  def check_recaptcha_v2
    valid = verify_recaptcha

    redirect_to new_user_registration_path unless valid
  end
end
