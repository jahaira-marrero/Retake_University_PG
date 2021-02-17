class Instructor < ApplicationRecord
    has_many :tutorings
    has_many :courses
end
