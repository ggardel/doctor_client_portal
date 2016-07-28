class AdminController < ApplicationController
before_action :authenticate_user!
#protect_from_forgery prepend: true
 #before_action :authenticate_user!
 before_action :authorize_admin

 def authorize_admin
 if current_user.admin
   #redirect_to admin_index_path
 else
   
   redirect_to welcome_index_path
 end
 end
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
      redirect_to medical_histories_path
    else
      render :new
  end
end

#create action Medical History
def create_medical_hist
   @medical_histories = MedicalHistory.new(params.require(:medical_history).permit(:user_id, :cardio_diagnostic, :cardio_secondary, :clinical_diagnostic, :clinical_secondary, :cardio_medication, :secondary_medication, :related_medication))

    if @medical_histories.save
      redirect_to physical_exams_path
    else
      render :new_medical_hist
  end
end

#create action Physical Exam
def create_physical_exam
  @physical_exams = PhysicalExam.new(params.require(:physical_exam).permit(:user_id, :pulse, :systolic_pressure, :diastolic_pressure, :height, :weight))

    if @physical_exams.save
      redirect_to notes_path
    else
      render :new_physical_exam
  end
end

#create action Note
def create_note
  @notes = Note.new(params.require(:note).permit(:user_id, :text, :date))

   if @notes.save
    redirect_to show_user_path
   else
    render :new_note
  end
end

    #Show action
  def show

    @patient_infos = PatientInfo.where(user_id: params[:user_id]).first
    @medical_histories = MedicalHistory.where(user_id: params[:user_id]).first
    @physical_exams = PhysicalExam.where(user_id: params[:user_id]).first
    @notes = Note.where(user_id: params[:user_id]).first

  end


#Edit action
#edit patient info
  def edit
    @patient_infos = PatientInfo.where(user_id: params[:user_id]).first
  end

#edit medical histories
 def edit_medical_hist
  @medical_histories = MedicalHistory.where(user_id: params[:user_id]).first
 end

#edit physical exams
def edit_physical_exam
  @physical_exams = PhysicalExam.where(user_id: params[:user_id]).first
end

#edit note
def edit_note
  @notes = Note.where(user_id: params[:user_id]).first
end


#Update action

#Update Patient Info action
def update
  @patient_infos = PatientInfo.where(user_id: params[:user_id]).first

  if @patient_infos.update_attributes(params.permit(:user_id, :name, :age, :gender, :address, :contact, :health_insurance, :primary_doctor))
    redirect_to show_user_path
  else
    render :edit
  end
end

#Update Medical History action
def update_medical_hist
  @medical_histories = MedicalHistory.where(user_id: params[:user_id]).first

  if @medical_histories.update_attributes(params.permit(:user_id, :cardio_diagnostic, :cardio_secondary, :clinical_diagnostic, :clinical_secondary, :cardio_medication, :secondary_medication, :related_medication))
    redirect_to show_user_path
  else
    render :edit_medical_hist
end
end

#Update Physical Exam
def update_physical_exam
  @physical_exams = PhysicalExam.where(user_id: params[:user_id]).first

  if @physical_exams.update_attributes(params.permit(:user_id, :pulse, :systolic_pressure, :diastolic_pressure, :height, :weight))
    redirect_to show_user_path
  else
    render :edit_physical_exam
  end
end

#Update Note
def update_note
  @notes = Note.where(user_id: params[:user_id]).first

  if @notes.update_attributes(params.permit(:user_id, :text, :date))
    redirect_to show_user_path
  else
    render :edit_note
  end
end



#Destroy action
  def destroy
    @user = User.where(id: params[:id]).first
    if @user.present?
    @user.destroy
  end
    redirect_to admin_index_path
end
end
