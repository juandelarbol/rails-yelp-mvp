class FixColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :reviews, :star, :rating
  end
end
