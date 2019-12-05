class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :instrument
      t.string :genre
      t.integer :experience

      t.timestamps
    end
  end
end
