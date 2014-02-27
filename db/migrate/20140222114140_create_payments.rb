class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :month_year
      t.integer :sponsorship_id
      t.string :method

      t.timestamps
    end
  end
end
