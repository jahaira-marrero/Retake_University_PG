class Student < ApplicationRecord
    has_many :registrars
    has_many :courses, through: :registrars
end
