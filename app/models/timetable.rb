class Timetable < ApplicationRecord
  has_many :evaluations

  validates :title, presence: true
  validates :teacher, presence: true
  validates :credit, numericality: true
  validates :day, presence: true
  validates :hours, numericality: true
  validates :year, presence: true
  validates :faculty, presence: true
  validates :specialty?, inclusion: { in: [true, false] }

end
