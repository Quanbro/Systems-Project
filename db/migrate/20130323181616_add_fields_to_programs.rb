class AddFieldsToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :sd, :string
    add_column :programs, :stimuli, :string
    add_column :programs, :cr, :string
  end
end
