class Round < ActiveRecord::Base
  belongs_to :course
  belongs_to :user
  has_many :round_holes

end
