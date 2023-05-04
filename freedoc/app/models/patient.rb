class Patient < ApplicationRecord
    has_many :appointment
    has_many :city
    has_many :doctors, through: :appointment
end
