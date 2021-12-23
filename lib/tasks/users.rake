namespace :users do
  desc "[wrong file but whatever] Remove old notifications"
  task delete_old_notifications: :environment do
    now = Time.now
    FrontPageNotification.all.each do |fpn|
      if Time.now > fpn.end_at
        fpn.destroy!
      end
    end
  end
end
