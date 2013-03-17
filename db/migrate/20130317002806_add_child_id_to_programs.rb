class AddChildIdToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :child_id, :integer
  end
end
