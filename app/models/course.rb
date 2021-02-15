class Course < ApplicationRecord
  belongs_to :instructor
  has_many :registrars
  has_many :students, through: :registrars

  def status
    if open
        "Open for Enrollment"
    else
        "Closed"
    end
  end
end
