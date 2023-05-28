class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :photo_url
      t.string :title
      t.text :synopsis
      t.string :duration
      t.float :rate_press
      t.float :rate_viewer
      t.string :allocine_id
      t.datetime :release_date

      t.timestamps
    end
  end
end
