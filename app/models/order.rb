class Order < ApplicationRecord
  

  ##BELONGS TO
  belongs_to :bike
  belongs_to :user

  
end
