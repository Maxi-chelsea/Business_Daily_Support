class CampanyUser < ApplicationRecord
  
  belongs_to :campany
  belongs_to :user
  
end
