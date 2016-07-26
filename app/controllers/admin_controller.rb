class AdminController < ApplicationController

#Index action list patient name with links
  def index

    @patient_infos = PatientInfo.all

  end


#New action

#new action PatientInfo
  def new
    @patient_infos = PatientInfo.new

  end

#new action MedicalHistory
  def new_medical_hist
    @medical_histories = MedicalHistory.new
    render "new_medical"
  end

#new action PhysicalExam
  def new_physical_exam
    @physical_exams = PhysicalExam.new
    render "new_physical"
  end

#new action Note
  def new_note
    @notes = Note.new
    render "new_notes"
  end


#Action create

#create action PatientInfo
  def create
    @patient_infos = PatientInfo.new(params.require(:patient_info).permit(:user_id, :name, :age, :gender, :address, :contact, :health_insurance, :primary_doctor))

    if @patient_infos.save
    redirect_to 
  end

  def show

    @patient_infos = PatientInfo.find(params[:user_id])
    @medical_histories = MedicalHistory.find(params[:user_id])
    @physical_exams = PhysicalExam.find(params[:user_id])
    @notes = Note.find(params[:user_id])

  end

  def edit
  end

  def update
  end

  def destroy
  end
end
