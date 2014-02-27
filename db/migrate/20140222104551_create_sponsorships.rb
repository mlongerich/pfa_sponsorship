class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.integer :donor_id
      t.integer :child_id
      t.integer :donation_type_id

      t.timestamps
    end
  end
end
