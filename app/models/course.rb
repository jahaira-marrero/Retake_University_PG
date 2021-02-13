class Course < ApplicationRecord
  belongs_to :instructor
  has_many :registrars
  has_many :students, through: :registrars
end
