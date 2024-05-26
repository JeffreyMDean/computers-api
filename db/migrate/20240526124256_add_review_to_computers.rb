class AddReviewToComputers < ActiveRecord::Migration[7.1]
  def change
    add_column :computers, :review, :string
  end
end
