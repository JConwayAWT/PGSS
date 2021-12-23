class DateConfig < ActiveRecord::Base
  before_create :only_one

  def only_one
    if DateConfig.count > 0
      raise "DateConfig record already exists"
    end
  end

  def self.APPLICATION_OPEN_DATE
    first.application_open_date
  end

  def self.SERVER_TIME_APPLICATION_DUE_DATE
    first.server_time_application_due_date
  end

  def self.EXPOSED_DUE_DATE
    first.exposed_due_date
  end

  def self.DECISION_DATE
    first.decision_date
  end

  def self.DECISION_NOTIFICATION_DATE
    first.decision_notification_date
  end

  def self.COUNSELOR_APPLICATION_DEADLINE_DATE
    first.counselor_application_deadline_date
  end

  def self.COUNSELOR_APPLICATION_START_DATE
    first.counselor_application_start_date
  end

  def self.ACCEPTANCE_DATE
    first.acceptance_date
  end

  def self.PROGRAM_START_DATE
    first.program_start_date
  end

  def self.MOVE_IN_DATE
    first.move_in_date
  end

  def self.PARENTS_VISIT_SATURDAY_DATE
    first.parents_visit_saturday_date
  end

  def self.PARENTS_VISIT_SUNDAY_DATE
    first.parents_visit_sunday_date
  end

  def self.PROGRAM_END_DATE
    first.program_end_date
  end

  def self.SYMPOSIUM_THURSDAY_DATE
    first.symposium_thursday_date
  end

  def self.SYMPOSIUM_FRIDAY_DATE
    first.symposium_friday_date
  end

  def self.MOVE_OUT_DEADLINE_DATE
    first.move_out_deadline_date
  end

  def self.COUNSELOR_JOB_AD_END_DATE
    first.counselor_job_ad_end_date
  end

  def self.APPLICATION_YEAR
    first.application_year
  end

  def self.APPLICATION_NEXT_YEAR
    first.application_next_year
  end

  def self.WEEKDAY_MONTH_DAY_TIME_OF_DUE_DATE
    # example: "Thursday, January 31, 11:59PM"
    self.EXPOSED_DUE_DATE.strftime("%A, %B %-d, %I:%M%p")
  end

  def self.WEEKDAY_MONTH_DAY_YEAR_TIME_OF_DUE_DATE
    # example: "Thursday, January 31, 2020, at 11:59PM"
    self.EXPOSED_DUE_DATE.strftime("%A, %B %-d, %Y, at %I:%M%p")
  end

  def self.MONTH_DAY_YEAR_OF_DUE_DATE
    # example: January 31, 2020
    self.EXPOSED_DUE_DATE.strftime("%B %-d, %Y")
  end

  def self.MONTH_DAY_OF_DUE_DATE
    # example: January 31
    self.EXPOSED_DUE_DATE.strftime("%B %-d")
  end

  def self.MONTH_DAY_YEAR_OF_DECISION_NOTIFICATION_DATE
    # example: January 31, 2020
    self.DECISION_NOTIFICATION_DATE.strftime("%B %-d, %Y")
  end

  def self.MONTH_DECISION_DATE
    # example: "April"
    self.DECISION_DATE.strftime("%B")
  end

  def self.MONTH_YEAR_DECISION_DATE
    # example: "April, 2020"
    self.DECISION_DATE.strftime("%B, %Y")
  end

  def self.MONTH_DAY_YEAR_ACCEPTANCE_DATE
    # example: "May 1, 2020"
    self.ACCEPTANCE_DATE.strftime("%B %-d, %Y")
  end

  def self.WEEKDAY_DAY_MONTH_YEAR_START_DATE
    # example: Sunday, June 30, 2020
    self.PROGRAM_START_DATE.strftime("%A, %B %-d, %Y")
  end

  def self.MONTH_DAY_PROGRAM_START_DATE
    # example: June 30
    self.PROGRAM_START_DATE.strftime("%B %-d")
  end

  def self.MONTH_DAY_YEAR_PROGRAM_START_DATE
    # example: June 30, 2020
    self.PROGRAM_START_DATE.strftime("%B %-d, %Y")
  end

  def self.MONTH_DAY_YEAR_PROGRAM_END_DATE
    # example: August 2, 2020
    self.PROGRAM_END_DATE.strftime("%B %-d, %Y")
  end

  def self.WEEKDAY_DAY_MONTH_PARENTS_VISIT_SATURDAY_DATE
    # example: Sunday, June 30
    self.PARENTS_VISIT_SATURDAY_DATE.strftime("%A, %B %-d")
  end

  def self.WEEKDAY_DAY_MONTH_PARENTS_VISIT_SUNDAY_DATE
    # example: Sunday, June 30
    self.PARENTS_VISIT_SUNDAY_DATE.strftime("%A, %B %-d")
  end

  def self.WEEKDAY_DAY_MONTH_SYMPOSIUM_THURSDAY_DATE
    # example: Sunday, June 30
    self.SYMPOSIUM_THURSDAY_DATE.strftime("%A, %B %-d")
  end

  def self.WEEKDAY_DAY_MONTH_SYMPOSIUM_FRIDAY_DATE
    # example: Sunday, June 30
    self.SYMPOSIUM_FRIDAY_DATE.strftime("%A, %B %-d")
  end

  def self.WEEKDAY_MONTH_DAY_TIME_OF_MOVE_OUT_DEADLINE_LINE
    # example: "Thursday, January 31, 11:59PM"
    self.MOVE_OUT_DEADLINE_DATE.strftime("%A, %B %-d, %I:%M%p")
  end

  def self.WEEKDAY_MONTH_DAY_TIME_OF_MOVE_IN_DATE
    # example: "Thursday, January 31, 2020"
    self.MOVE_IN_DATE.strftime("%A, %B %-d, %Y")
  end
end
