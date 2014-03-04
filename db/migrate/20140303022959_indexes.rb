class Indexes < ActiveRecord::Migration
  def change
    add_index :sponsorships, :donor_id
    add_index :sponsorships, :child_id
    add_index :sponsorships, :sponsorship_type_id
    add_index :payments, :sponsorship_id
  end
end
