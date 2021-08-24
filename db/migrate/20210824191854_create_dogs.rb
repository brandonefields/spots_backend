class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :color
      t.string :breed
      t.integer :aggressivebehavior
      t.integer :speed
      t.float :size
      t.integer :sensitive
      t.datetime :lastupdated
      t.integer :sociability
      t.text :notes
      t.boolean :bitehistory
      t.boolean :reactive
      t.string :image

      t.timestamps
    end
  end
end
