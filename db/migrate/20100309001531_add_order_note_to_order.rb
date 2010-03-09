class AddOrderNoteToOrder < ActiveRecord::Migration
  def self.up
    add_column :orders, :order_note, :text
  end

  def self.down
    drop_column :orders, :order_note
  end
end
