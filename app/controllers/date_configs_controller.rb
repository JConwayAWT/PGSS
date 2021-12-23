class DateConfigsController < ApplicationController
  before_action :authenticate_user!
  before_action :disallowed, only: [:index, :show, :new, :destroy, :create]
  before_action :set_date_config, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def update
    if @date_config.update(date_config_params)
      redirect_to admin_tools_path, notice: 'Date config was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_config
      @date_config = DateConfig.first
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_config_params
      params.require(:date_config).permit(:application_open_date, :server_time_application_due_date, :exposed_due_date, :decision_date, :decision_notification_date, :counselor_application_deadline_date, :counselor_application_start_date, :acceptance_date, :program_start_date, :move_in_date, :parents_visit_saturday_date, :parents_visit_sunday_date, :program_end_date, :symposium_thursday_date, :symposium_friday_date, :move_out_deadline_date, :counselor_job_ad_end_date, :application_year, :application_next_year)
    end
end
