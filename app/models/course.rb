class Course < ActiveRecord::Base
  has_many :rounds, dependent: :destroy
  has_many :course_holes, dependent: :destroy
  has_many :users, through: :rounds
  belongs_to :round

  validates :name, presence: true
  validates :holes, presence: true
  validates :par, presence: true



end
