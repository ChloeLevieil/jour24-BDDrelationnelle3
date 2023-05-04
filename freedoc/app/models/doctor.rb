class Doctor < ApplicationRecord
    belongs_to :city
    has_many :appointment
    has_many :patients, through: :appointment
end
