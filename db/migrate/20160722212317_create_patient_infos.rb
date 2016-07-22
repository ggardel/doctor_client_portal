class CreatePatientInfos < ActiveRecord::Migration
  def change
    create_table :patient_infos do |t|
      t.integer :user_id
      t.string :name
      t.integer :age
      t.string :gender
      t.string :address
      t.string :contact
      t.string :health_insurance
      t.string :primary_doctor

      t.timestamps null: false
    end
  end
end
