class User < ActiveRecord::Base
 has_many :patient_infos, dependent: :destroy
 has_many :medical_histories, dependent: :destroy
 has_many :notes, dependent: :destroy
 has_many :physical_exams, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :trackable, :validatable
end
