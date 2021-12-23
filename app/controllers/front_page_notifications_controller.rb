class FrontPageNotificationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_front_page_notification, only: [:show, :edit, :update, :destroy]

  # GET /front_page_notifications
  # GET /front_page_notifications.json
  def index
    @front_page_notifications = FrontPageNotification.all
  end

  # GET /front_page_notifications/new
  def new
    @front_page_notification = FrontPageNotification.new
  end

  # GET /front_page_notifications/1/edit
  def edit
  end

  # POST /front_page_notifications
  # POST /front_page_notifications.json
  def create
    @front_page_notification = FrontPageNotification.new(front_page_notification_params)

    if @front_page_notification.save
      redirect_to front_page_notifications_path, notice: 'Front page notification was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /front_page_notifications/1
  # PATCH/PUT /front_page_notifications/1.json
  def update
    if @front_page_notification.update(front_page_notification_params)
      redirect_to front_page_notifications_path, notice: 'Front page notification was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /front_page_notifications/1
  # DELETE /front_page_notifications/1.json
  def destroy
    @front_page_notification.destroy
    redirect_to front_page_notifications_url, notice: 'Front page notification was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_front_page_notification
      @front_page_notification = FrontPageNotification.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def front_page_notification_params
      params.require(:front_page_notification).permit(:message, :color, :start_at, :end_at)
    end
end
