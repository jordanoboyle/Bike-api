class Order < ApplicationRecord
  validates :quantity, numericality: true
  validates :quantity, numericality: {only_integer: true}
  validates :quantity, numericality: {greater_than: 0}  

  ##BELONGS TO
  belongs_to :bike
  belongs_to :user

  
end
