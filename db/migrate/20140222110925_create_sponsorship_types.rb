class CreateSponsorshipTypes < ActiveRecord::Migration
  def change
    create_table :sponsorship_types do |t|
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end
