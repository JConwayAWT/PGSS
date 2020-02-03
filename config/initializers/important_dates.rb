SERVER_TIME_APPLICATION_DUE_DATE = Time.new(2020, 2, 1, 5, 0)
EXPOSED_DUE_DATE                 = Time.new(2020, 1, 31, 23, 59, 59)
DECISION_DATE                    = Time.new(2020, 3, 31, 5, 0, 0)
DECISION_NOTIFICATION_DATE       = Time.new(2020, 4, 15, 17, 0, 0)
ACCEPTANCE_DATE                  = Time.new(2020, 5, 1, 12, 0, 0)
PROGRAM_START_DATE               = Time.new(2020, 6, 29, 9, 0, 0)
MOVE_IN_DATE                     = Time.new(2020, 6, 28, 12, 0, 0)
PARENTS_VISIT_SATURDAY_DATE      = Time.new(2020, 7, 18, 17, 0, 0)
PARENTS_VISIT_SUNDAY_DATE        = Time.new(2020, 7, 19, 17, 0, 0)
PROGRAM_END_DATE                 = Time.new(2020, 7, 31, 18, 0, 0)
SYMPOSIUM_THURSDAY_DATE          = Time.new(2020, 7, 30, 12, 0, 0)
SYMPOSIUM_FRIDAY_DATE            = Time.new(2020, 7, 31, 12, 0, 0)
MOVE_OUT_DEADLINE_DATE           = Time.new(2020, 8, 1, 12, 0, 0)
APPLICATION_YEAR                 = 2020
APPLICATION_NEXT_YEAR            = 2021

# example: "Thursday, January 31, 11:59PM"
WEEKDAY_MONTH_DAY_TIME_OF_DUE_DATE = EXPOSED_DUE_DATE.strftime("%A, %B %-d, %I:%M%p")

# example: "Thursday, January 31, 2020, at 11:59PM"
WEEKDAY_MONTH_DAY_YEAR_TIME_OF_DUE_DATE = EXPOSED_DUE_DATE.strftime("%A, %B %-d, %Y, at %I:%M%p")

# example: January 31, 2020
MONTH_DAY_YEAR_OF_DUE_DATE = EXPOSED_DUE_DATE.strftime("%B %-d, %Y")

# example: January 31
MONTH_DAY_OF_DUE_DATE = EXPOSED_DUE_DATE.strftime("%B %-d")




# example: January 31, 2020
MONTH_DAY_YEAR_OF_DECISION_NOTIFICATION_DATE = DECISION_NOTIFICATION_DATE.strftime("%B %-d, %Y")




# example: "April"
MONTH_DECISION_DATE = DECISION_DATE.strftime("%B")

# example: "April, 2020"
MONTH_YEAR_DECISION_DATE = DECISION_DATE.strftime("%B, %Y")




# example: "May 1, 2020"
MONTH_DAY_YEAR_ACCEPTANCE_DATE = ACCEPTANCE_DATE.strftime("%B %-d, %Y")




# example: Sunday, June 30, 2020
WEEKDAY_DAY_MONTH_YEAR_START_DATE = PROGRAM_START_DATE.strftime("%A, %B %-d, %Y")

# example: June 30
MONTH_DAY_PROGRAM_START_DATE = PROGRAM_START_DATE.strftime("%B %-d")

# example: June 30, 2020
MONTH_DAY_YEAR_PROGRAM_START_DATE = PROGRAM_START_DATE.strftime("%B %-d, %Y")

# example: August 2, 2020
MONTH_DAY_YEAR_PROGRAM_END_DATE = PROGRAM_END_DATE.strftime("%B %-d, %Y")




# example: Sunday, June 30
WEEKDAY_DAY_MONTH_PARENTS_VISIT_SATURDAY_DATE = PARENTS_VISIT_SATURDAY_DATE.strftime("%A, %B %-d")




# example: Sunday, June 30
WEEKDAY_DAY_MONTH_PARENTS_VISIT_SUNDAY_DATE = PARENTS_VISIT_SUNDAY_DATE.strftime("%A, %B %-d")




# example: Sunday, June 30
WEEKDAY_DAY_MONTH_SYMPOSIUM_THURSDAY_DATE = SYMPOSIUM_THURSDAY_DATE.strftime("%A, %B %-d")




# example: Sunday, June 30
WEEKDAY_DAY_MONTH_SYMPOSIUM_FRIDAY_DATE = SYMPOSIUM_FRIDAY_DATE.strftime("%A, %B %-d")




# example: "Thursday, January 31, 11:59PM"
WEEKDAY_MONTH_DAY_TIME_OF_MOVE_OUT_DEADLINE_LINE = MOVE_OUT_DEADLINE_DATE.strftime("%A, %B %-d, %I:%M%p")




# example: "Thursday, January 31, 2020"
WEEKDAY_MONTH_DAY_TIME_OF_MOVE_IN_DATE = MOVE_IN_DATE.strftime("%A, %B %-d, %Y")
