class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
      t.references :cinema, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.datetime :time_slot
      t.string :link
      t.string :allocine_id

      t.timestamps
    end
  end
end
