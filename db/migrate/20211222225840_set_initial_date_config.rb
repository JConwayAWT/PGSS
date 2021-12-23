class SetInitialDateConfig < ActiveRecord::Migration[5.2]
  def change
    dc = DateConfig.new
    dc.application_open_date               = Time.new(2021, 10, 1, 0, 0, 0)
    dc.server_time_application_due_date    = Time.new(2022, 2, 1, 8, 0, 0)
    dc.exposed_due_date                    = Time.new(2022, 1, 31, 23, 59, 59)

    dc.decision_date                       = Time.new(2022, 3, 28 , 5, 0, 0)
    dc.decision_notification_date          = Time.new(2022, 4, 15, 17, 0, 0)

    dc.counselor_application_deadline_date = Time.new(2022, 4, 15, 0, 0)
    dc.counselor_application_start_date    = Time.new(2022, 1, 1, 0, 0)

    dc.acceptance_date                     = Time.new(2022, 5, 1, 12, 0, 0)
    dc.program_start_date                  = Time.new(2022, 6, 26, 17, 0, 0)
    dc.move_in_date                        = Time.new(2022, 6, 26, 12, 0, 0)
    dc.parents_visit_saturday_date         = Time.new(2022, 7, 16, 17, 0, 0)
    dc.parents_visit_sunday_date           = Time.new(2022, 7, 17, 17, 0, 0)
    dc.program_end_date                    = Time.new(2022, 7, 29, 18, 0, 0)
    dc.symposium_thursday_date             = Time.new(2022, 7, 28, 12, 0, 0)
    dc.symposium_friday_date               = Time.new(2022, 7, 29, 12, 0, 0)
    dc.move_out_deadline_date              = Time.new(2022, 7, 30, 12, 0, 0)

    dc.counselor_job_ad_end_date           = Time.new(2022, 4, 15, 23, 59, 59)

    dc.application_year                    = 2022
    dc.application_next_year               = 2023
    dc.save
  end
end
