class CreateFrontPageNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :front_page_notifications do |t|
      t.text :message
      t.text :color
      t.datetime :start_at
      t.datetime :end_at

      t.timestamps
    end
  end
end
