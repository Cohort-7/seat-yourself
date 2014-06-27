module RestaurantsHelper
  def format_time(time)
    time.strftime("%l %P")
  end
end
