# frozen_string_literal: true

class Exam < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :difficulty, presence: true
  validates :version, presence: true

  has_and_belongs_to_many :questions
  has_many :answer
  has_many :users, through: :answer
  enum :difficulty, %i[beginner intermediate advanced]

  scope :by_category, lambda { |category_name|
    return all unless category_name.present?

    category = Category.find_by!(title: category_name.strip.downcase)
    where(category_id: category.id)
  }
end
