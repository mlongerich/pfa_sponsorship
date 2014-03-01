class AddActiveToSponsorship < ActiveRecord::Migration
  def change
    add_column :sponsorships, :active, :boolean, dafault: true
  end
end
