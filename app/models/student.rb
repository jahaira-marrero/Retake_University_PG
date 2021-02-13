class Student < ApplicationRecord
    has_many :registrars, dependent: :destroy
    has_many :courses, through: :registrars

end
