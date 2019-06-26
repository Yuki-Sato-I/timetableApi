class Evaluation < ApplicationRecord
  belongs_to :timetable

  validates :content, presence: true
  validates :timetable_id, numericality: true
  validates :star, numericality: true
  validates :title, presence: true
  #validates :user, presence: true
  #validates :permission, presence: true

end
