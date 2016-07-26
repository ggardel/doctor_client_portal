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
