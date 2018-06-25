class AddIndexNewLinkToLinks < ActiveRecord::Migration[5.2]
  def change
    add_index :links, :new_link
 
  end
end
