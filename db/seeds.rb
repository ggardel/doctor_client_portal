# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: "gustavo@gmail.com", password: "cancan", password_confirmation: "cancan", admin: true)
User.create(email: "jamesbond@gmail.com", password: "cancan", password_confirmation: "cancan")
User.create(email: "superman@gmail.com", password: "cancan", password_confirmation: "cancan")
User.create(email: "lexluthor@gmail.com", password: "cancan", password_confirmation: "cancan")
User.create(email: "greenhulk@gmail.com", password: "cancan", password_confirmation: "cancan")
User.create(email: "batman@gmail.com", password: "cancan", password_confirmation: "cancan")
User.create(email: "elektra@gmail.com", password: "cancan", password_confirmation: "cancan")



PhysicalExam.create(user_id: 2, pulse: 80, systolic_pressure: 130, diastolic_pressure: 86, height: "6'2", weight: 180)
PhysicalExam.create(user_id: 3, pulse: 58, systolic_pressure: 110, diastolic_pressure: 78, height: "6'4", weight: 210)
PhysicalExam.create(user_id: 4, pulse: 94, systolic_pressure: 140, diastolic_pressure: 94, height: "5'6", weight: 206)
PhysicalExam.create(user_id: 5, pulse: 130, systolic_pressure: 150, diastolic_pressure: 99, height: "5'6", weight: 190)
PhysicalExam.create(user_id: 6, pulse: 64, systolic_pressure: 120, diastolic_pressure: 74, height: "6'4", weight: 215)
PhysicalExam.create(user_id: 7, pulse: 68, systolic_pressure: 120, diastolic_pressure: 77, height: "5'9", weight: 130)



MedicalHistory.create(user_id: 2, cardio_diagnostic: "Atrial Fibrillation", cardio_secondary: "Abnormal Heart Rhytms", clinical_diagnostic: "Hypertension", clinical_secondary: "Gastric Ulcer", cardio_medication: "Warfarin 150mg", secondary_medication: "Atenolol 5 mg", related_medication: "Propafenone 1.5mg")
MedicalHistory.create(user_id: 3, cardio_diagnostic: "Bradycardia", cardio_secondary: "Peripheral artery disease", clinical_diagnostic: "High Cholesterol", clinical_secondary: "Urinary Infection", cardio_medication: "Metropolol 50mg", secondary_medication: "Diltiazen 5 mg", related_medication: "Aspirin 81mg")
MedicalHistory.create(user_id: 4, cardio_diagnostic: "Coronary Artery Disease", cardio_secondary: "Angina", clinical_diagnostic: "Hypertension", clinical_secondary: "Diabetes", cardio_medication: "Atenolol 3mg", secondary_medication: "Sinvastatin 10 mg", related_medication: "Propranolol 10mg")
MedicalHistory.create(user_id: 5, cardio_diagnostic: "Coronary Artery Disease", cardio_secondary: "Heart Murmur", clinical_diagnostic: "Hypertension", clinical_secondary: "Syncope", cardio_medication: "Carvedilol 10mg", secondary_medication: "Amiodarone 10 mg", related_medication: "Propranolol 8 mg")
MedicalHistory.create(user_id: 6, cardio_diagnostic: "Aneurysm Aortic", cardio_secondary: "Cardiomyopathy Hypertrophic", clinical_diagnostic: "High Cholesterol", clinical_secondary: "Syncope", cardio_medication: "Metropolol 5 mg", secondary_medication: "Atenolol 3  mg", related_medication: "Sinvastatin 10 mg")
MedicalHistory.create(user_id: 7, cardio_diagnostic: "Arrhythmia", cardio_secondary: "Angina", clinical_diagnostic: "Gallstones", clinical_secondary: "Glaucom", cardio_medication: "Amiodarone 0.5 mg", secondary_medication: "Digoxin 0.5 mg", related_medication: "Aspirin 81 mg")



Note.create(user_id: 2, text: "Patient submitted to successful Eletrical Cardioversion. Requested new EKG and Warfarin test control. Return in a week.", date: "2016/07/21")
Note.create(user_id: 3, text: "Patient complained of Nausea. EKG shows Bradycardia controlled. Keeping medications as same. Prescribed Dramamine 15 mg PRN.", date: "2016/07/20")
Note.create(user_id: 4, text: "Patient complained of chest pain. Requested cateterism. Stent needed? Procedure scheduled for 07/29/2016.", date: "2016/07/19")
Note.create(user_id: 5, text: "Recomended YOGA to help to control stress level. No changes.", date: "2016/07/06")
Note.create(user_id: 6, text: "Requested new MRI for comparing. Complained of chest pain. Refered to vascular surgeon.", date: "2016/07/18")
Note.create(user_id: 7, text: "New EKG no changes. Requested new EKG for next month visit.", date: "2016/07/03")



PatientInfo.create(user_id: 2, name:"James Bond", age: 60, gender: "male", address: "007 Hollywood Blvd, Los Angeles - CA", contact: "909-702-0007", health_insurance: "Golden", primary_doctor: "Dr Seuss")
PatientInfo.create(user_id: 3, name: "Clark Kent", age: 58, gender: "male", address: "2241 Avenger Rd, Metropolis - CA", contact: "405-700-4444", health_insurance: "Blue Shield", primary_doctor: "Dr White")
PatientInfo.create(user_id: 4, name: "Lex Luthor", age: 63, gender: "male", address: "999 Vilan Dr, Metropolis - CA", contact: "405-702-0304", health_insurance: "Keiser", primary_doctor: "Dr Brown")
PatientInfo.create(user_id: 5, name: "Bruce Banner Hulk", age: 55, gender: "male", address: "321 Marvel st, San Francisco - CA", contact: "709-702-0212", health_insurance: "Golden", primary_doctor: "Dr Seuss")
PatientInfo.create(user_id: 6, name: "Bruce Wayne Batman", age: 52, gender: "male", address: "241 Gotham Ave, Los Angeles - CA", contact: "723-722-4144", health_insurance: "HeathBat", primary_doctor: "Dr Dark Knight")
PatientInfo.create(user_id: 7, name: "Elektra Natchios", age: 48, gender: "female", address: "168 Daredevil st, Los Angeles - CA", contact: "673-232-3990", health_insurance: "Shield", primary_doctor: "Dr Shock")
