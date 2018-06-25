class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
      t.string :old_link
      t.string :new_link
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
