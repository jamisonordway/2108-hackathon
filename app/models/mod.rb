class Mod < ApplicationRecord
  has_many :instructors
  has_many :students
  has_many :lesson_dates
  enum program: [:backend, :frontend, :combined]
end
