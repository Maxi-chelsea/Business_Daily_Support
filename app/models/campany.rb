class Campany < ApplicationRecord

  has_many :campany_users
  has_many :users, through: :campany_users
  has_many :campany_posts
  accepts_nested_attributes_for :campany_users

end
