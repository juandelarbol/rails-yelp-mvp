class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.integer :star
      t.text :content
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end