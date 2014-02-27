class CreateChildren < ActiveRecord::Migration
  def change
    create_table :children do |t|
      t.string :name
      t.integer :number
      t.string :status
      t.string :photo
      t.boolean :active

      t.timestamps
    end
  end
end
