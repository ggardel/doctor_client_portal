class User < ActiveRecord::Base
 has_many :patient_infos
 has_many :medical_histories
 has_many :notes
 has_many :physical_exams

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
