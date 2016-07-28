class GuestController < ApplicationController

before_action :authenticate_user!




  def show_patient_info

    @patient_infos = PatientInfo.where(user_id: params[:user_id]).first

  end


  def show_medical_hist

    @medical_histories = MedicalHistory.where(user_id: params[:user_id]).first

  end

  def show_physical_exam

    @physical_exams = PhysicalExam.where(user_id: params[:user_id]).first

  end

  def show_note

    @notes = Note.where(user_id: params[:user_id]).first

  end



end
