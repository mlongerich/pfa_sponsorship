class ChangeColumnDefaults < ActiveRecord::Migration
  def change
    change_column_default :children, :active, default: true
    change_column_default :children, :living, default: false
    change_column_default :children, :schooling, default: false
    change_column_default :sponsorships, :active, default: false
  end
end
