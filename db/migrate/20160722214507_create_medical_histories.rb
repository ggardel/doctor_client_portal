class CreateMedicalHistories < ActiveRecord::Migration
  def change
    create_table :medical_histories do |t|
      t.integer :user_id
      t.string :cardio_diagnostic
      t.string :cardio_secondary
      t.string :clinical_diagnostic
      t.string :clinical_secondary
      t.string :cardio_medication
      t.string :secondary_medication
      t.string :related_medication

      t.timestamps null: false
    end
  end
end
