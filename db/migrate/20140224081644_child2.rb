class Child2 < ActiveRecord::Migration
  def change
    remove_column :children, :status
    add_column :children, :living, :boolean
    add_column :children, :schooling, :boolean
  end
end
