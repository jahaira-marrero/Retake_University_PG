class Student < ApplicationRecord
    has_many :grades, dependent: :destroy
    has_many :courses, through: :grades

    validates :name, presence: true, uniqueness: true
    validates :age, numericality: {less_than: 80, message: "You're too old!"}
    validates :age, numericality: {greater_than: 20, message: "You're too young!"}
    validates :major, presence: true
end
