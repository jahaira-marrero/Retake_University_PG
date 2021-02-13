class Instructor < ApplicationRecord
    has_many :office_hours
    has_many :courses
end
