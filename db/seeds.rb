# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Faker::Config.locale=:fr

5.times do
  City.create!(name: Faker::Address.city)
end

Specialty.destroy_all
Specialty.reset_pk_sequence

specialties = ["generalist", "dermatologist", "dentist", "ophtalmologist"]

specialties.each do |specialty|
  Specialty.create!(specialty: specialty)
end

Patient.destroy_all
Patient.reset_pk_sequence

50.times do
  Patient.create!(first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  city: City.find_by(id:rand(1..5))
)
end

Doctor.destroy_all
Doctor.reset_pk_sequence

10.times do
  Doctor.create!(first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  #specialty: specialties.sample,
  zip_code: Faker::Address.zip_code,
  city: City.find_by(id:rand(1..5))
)
end

JoinTableDoctorSpecialty.destroy_all
JoinTableDoctorSpecialty.reset_pk_sequence

40.times do
  JoinTableDoctorSpecialty.create!(
    doctor_id: rand(1..10),
    specialty_id: rand(1..4))
end

Appointment.destroy_all
Appointment.reset_pk_sequence

50.times do
      Appointment.create!(doctor: Doctor.find_by(id:rand(1..10)), patient: Patient.find_by(id:rand(1..50)),
      date: Faker::Time.unique.between(from: DateTime.now - 1, to: DateTime.now),
      city: City.find_by(id:rand(1..5))
    )
end
