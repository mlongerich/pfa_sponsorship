class Payment < ActiveRecord::Base
  belongs_to :sponsorship
  has_one :child, through: :sponsorship
  has_one :donor, through: :sponsorship
  has_one :sponsorship_type, through: :sponsorship

  validates :month_year, :sponsorship_id, presence:true
end
