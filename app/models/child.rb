class Child < ActiveRecord::Base
  has_many :sponsorships
  has_many :donors, through: :sponsorships
  has_many :sponsorship_types, through: :sponsorships
  
  validates :name, :number, :active, :living, :schooling, presence: true
  validates :name, uniqueness: true 
end
