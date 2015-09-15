class CreateSection < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.belongs_to :lifeguard
      t.integer :size
      t.timestamps
    end
  end
end
