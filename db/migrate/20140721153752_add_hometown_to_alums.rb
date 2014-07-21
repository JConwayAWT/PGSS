class AddHometownToAlums < ActiveRecord::Migration
  def change
    change_table :alums do |t|
      t.string :hometown
      t.string :state
    end
  end
end
