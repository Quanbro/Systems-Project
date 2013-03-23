class AddMasteryToPrograms < ActiveRecord::Migration
  def change
    add_column :programs, :mastery_criteria, :string
  end
end
