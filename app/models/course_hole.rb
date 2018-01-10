class CourseHole < ActiveRecord::Base
  belongs_to :course
  has_many :round_holes
  has_one :tee
end
