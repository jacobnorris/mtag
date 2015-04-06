class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|

      t.string :name
      t.string :color
      t.integer :converted_mana_cost
      t.integer :colored_mana_cost

      t.string :supertype
      t.string :type
      t.string :subtype

      t.string :set
      t.string :rarity

      t.text :rules_text
      t.text :reminder_text
      t.text :flavor_text

      t.string :power
      t.string :toughness

      t.string :artist
      t.string :collector_number

      t.timestamps
    end
  end
end
