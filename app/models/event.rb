class Event < ApplicationRecord
  has_many :attendances
  has_many :participants, class_name:'User', through: :attendances
  belongs_to :admin, class_name: 'User'

  validates :start_date, presence: true
  validates :title, presence: true, length:{in:5..140}
  validates :description, presence: true, length:{in:20..1000}
  validates :price, presence: true, numericality:{in:1..1000}
  validates :location, presence: true
  validates :duration, presence: true
  
  validates_with EventValidator
  
end
# validates_each :start_date, :title, :description,:price,:location,:duration do |record, attr, value|
#   record.errors.add(attr, 'must start with upper case') if presence != true
# end

  