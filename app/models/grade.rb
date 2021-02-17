class Grade < ApplicationRecord
  belongs_to :student
  belongs_to :course

  # validate :if_no_open_seats

  # def if_no_open_seats
  #   course = Course.find(params[:grade][:course_id])
  #   if open_seats < 0 
  #     errors.add(:open_seats, "Course is full.")
  #   end
  # end

end
