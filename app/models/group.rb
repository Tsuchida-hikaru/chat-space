class Group < ApplicationRecord
  has_many :messages
  has_many :group_users
  has_many :users, through: :group_users
  accepts_nested_attributes_for :group_users

  validates_presence_of :name
end
