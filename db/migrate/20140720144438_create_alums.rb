class CreateAlums < ActiveRecord::Migration[5.2]
  def change
    create_table :alums do |t|
      t.string :first_name
      t.string :last_name
      t.string :current_last_name
      t.string :high_school
      t.integer :pgss_year
      t.string :city
      t.string :email
      t.integer :iu

      t.timestamps
    end
  end
end
