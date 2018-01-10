class Tee < ActiveRecord::Base
  belongs_to :course_hole
  belongs_to :course 
end
