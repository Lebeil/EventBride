class Event < ApplicationRecord
  belongs_to :admin, class_name: 'User'
  has_many :participations
  has_many :users, through: :participations

  validates :start_date, presence: true
  validates :duration,
            presence: true,
            numericality: { greater_than: 0 }
  validates :title,
            presence: true,
            length: { in: 5..140 }
  validates :description,
            presence: true,
            length: { minimum: 20, maximum: 1000 }
  validates :price,
            numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 1000},
            presence: true
  validates :location, presence: true
end
