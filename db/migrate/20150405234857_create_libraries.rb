class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :card, index: true
    	t.integer :card_count, default: 0
    	t.timestamps
    end
  end
end
