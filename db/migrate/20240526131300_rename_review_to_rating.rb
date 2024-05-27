class RenameReviewToRating < ActiveRecord::Migration[7.1]
  def change
    rename_column :computers, :review, :rating
  end
end
