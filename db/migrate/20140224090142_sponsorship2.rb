class Sponsorship2 < ActiveRecord::Migration
  def change
    remove_column :sponsorships, :donation_type_id
    add_column :sponsorships, :sponsorship_type_id, :integer 
  end
end
