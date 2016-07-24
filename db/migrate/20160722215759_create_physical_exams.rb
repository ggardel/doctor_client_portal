class CreatePhysicalExams < ActiveRecord::Migration
  def change
    create_table :physical_exams do |t|
      t.integer :user_id
      t.integer :pulse
      t.integer :systolic_pressure
      t.integer :diastolic_pressure
      t.string  :height
      t.integer :weight

      t.timestamps null: false
    end
  end
end
