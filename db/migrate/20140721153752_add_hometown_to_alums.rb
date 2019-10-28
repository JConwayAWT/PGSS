class AddHometownToAlums < ActiveRecord::Migration[5.2]
  def change
    change_table :alums do |t|
      t.string :hometown
      t.string :state
    end
  end
end
