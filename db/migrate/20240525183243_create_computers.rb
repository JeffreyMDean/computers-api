class CreateComputers < ActiveRecord::Migration[7.1]
  def change
    create_table :computers do |t|
      t.string :make
      t.string :model
      t.string :year
      t.timestamps
    end
  end
end
