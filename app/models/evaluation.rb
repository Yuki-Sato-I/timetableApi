class Evaluation < ApplicationRecord
  belongs_to :timetable

  validates :content, presence: true
  validates :timetable_id, numericality: true, presence: true
  validates :star, numericality: true

end
