class CreateDateConfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :date_configs do |t|
      t.datetime :application_open_date
      t.datetime :server_time_application_due_date
      t.datetime :exposed_due_date
      t.datetime :decision_date
      t.datetime :decision_notification_date
      t.datetime :counselor_application_deadline_date
      t.datetime :counselor_application_start_date
      t.datetime :acceptance_date
      t.datetime :program_start_date
      t.datetime :move_in_date
      t.datetime :parents_visit_saturday_date
      t.datetime :parents_visit_sunday_date
      t.datetime :program_end_date
      t.datetime :symposium_thursday_date
      t.datetime :symposium_friday_date
      t.datetime :move_out_deadline_date
      t.datetime :counselor_job_ad_end_date
      t.integer :application_year
      t.integer :application_next_year

      t.timestamps
    end
  end
end
