# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
5.times do
  doctor = Doctor.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.female_first_name, specialty: Faker::Job.field, zip_code: Faker::Address.zip_code)
end

5.times do
    patient = Patient.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.female_first_name)
  end

5.times do
    city = City.create!(city: Faker::Address.city)
end

5.times do
    doctor = Doctor.order("RANDOM()").first
    patient = Patient.order("RANDOM()").first
    appointment = Appointment.create!(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :short), doctor: doctor, patient: patient)
  end

