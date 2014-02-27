class SponsorshipType2 < ActiveRecord::Migration
  def change
    remove_column :sponsorship_types, :type
    add_column :sponsorship_types, :kind, :string
  end
end
