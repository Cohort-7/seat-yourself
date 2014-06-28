module RestaurantsHelper
  def format_time(time)
    time.strftime("%l %P")
  end

  def format_phone(number)
    "#{number[0..2]} - #{number[3..5]} - #{number[6..-1]}"
  end
end
