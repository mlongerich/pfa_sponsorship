class Sponsorship < ActiveRecord::Base
  belongs_to :child
  belongs_to :donor
  belongs_to :sponsorship_type
  has_many :payments

  validates :donor_id, :child_id, :sponsorship_type_id, presence:true
end
