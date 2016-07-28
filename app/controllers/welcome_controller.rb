class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index

    @patient_infos = PatientInfo.where(user_id: current_user.id)
  end
end
