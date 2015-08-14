class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :image
      t.string :street_address
      t.string :year_completed
      t.string :month_completed
      t.string :cost
      t.string :relationship
      t.text :review
      t.string :rating

      t.timestamps

    end
  end
end
