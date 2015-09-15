class CreateLifeguards < ActiveRecord::Migration
  def change
    create_table :lifeguards do |t|
      t.boolean :tan
      t.integer :spf

      t.timestamps null: false
    end
  end
end
