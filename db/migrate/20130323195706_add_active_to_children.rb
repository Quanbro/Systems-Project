class AddActiveToChildren < ActiveRecord::Migration
  def change
    add_column :children, :active, :boolean, :default => true
  end
end
