json.array!(@alums) do |alum|
  json.extract! alum, :id, :first_name, :last_name, :current_last_name, :high_school, :pgss_year, :city, :email, :iu
  json.url alum_url(alum, format: :json)
end
