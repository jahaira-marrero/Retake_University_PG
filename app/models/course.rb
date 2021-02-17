class Course < ApplicationRecord
  belongs_to :instructor
  has_many :grades
  has_many :students, through: :grades

  
  validates :seat_limit, numericality: {greater_than_or_equal_to: 0, message: "Not enough seats to register" }
  validates :seat_limit, numericality: {less_than: 11, message: "No More than 10 seats available"}
  
  def status
    if open
        "Open for Enrollment"
    else
        "Closed"
    end
  end



  # def decrease_number_by(number)
  #   new_number = self.seat_limit - number
  #   self.update(seat_limit: new_number)
  # end

  def open_seats
    self.seat_limit - self.grades.count
  end

end
