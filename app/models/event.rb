class Event < ApplicationRecord
  belongs_to :admin, class_name: 'User'
  has_many :participations
  has_many :users, through: :participations

  validates :start_date, :duration, :title, :description, :price, :location, presence: true
  validates :title, length: {minimum: 5, maximum: 140}
  validates :description, length: {minimum: 20, maximum: 1000}
  validates :price, numericality: {greater_than: 0, less_than_or_equal_to: 1000}
  validate :multiple_of_five
  validate :cant_be_past


  private
  #duration
  def multiple_of_five
    errors.add(:duration, "Désolé, ça doit être un multiple de 5 !") unless duration % 5 == 0
  end

  #start_date
  def cant_be_past
    errors.add(:start_date, "La date doit être supérieur à la date d'aujourd'hui !") if start_date < Time.now
  end

end
