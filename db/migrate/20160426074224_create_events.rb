class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :place
      t.text :description
      t.integer :max_members
      t.integer :min_members
      t.timestamps null: false
    end
  end
end
