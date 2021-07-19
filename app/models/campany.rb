class Campany < ApplicationRecord

  has_many :campany_users
  has_many :users, through: :campany_users
  has_many :campany_posts
  validates :name, presence: true
  validates :code, presence: true
  accepts_nested_attributes_for :campany_users, allow_destroy: true
  
 

end
