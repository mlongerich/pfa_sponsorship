class SponsorshipType < ActiveRecord::Base
  has_many :sponsorships
  has_many :children, through: :sponsorships
  has_many :donors, through: :sponsorships

  validates :amount, :kind, presence:true
end
