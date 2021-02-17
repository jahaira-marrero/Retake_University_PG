class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :course

  # validate :if_no_open_seats, on: :create

  # def if_no_open_seats
  #   if self.course && self.course.open_seats < 0 
  #     errors.add(:this_course, "is full. Please select another course")
  #   end
  # end




end
