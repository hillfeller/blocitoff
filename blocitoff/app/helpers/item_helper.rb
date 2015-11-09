module ItemHelper
  def time_remaining(item)
    from_time = item.created_at
    to_time = Time.now - 7.days
    output = ""
    output += "<small> #{distance_of_time_in_words(item.created_at + 7.days, Time.now)} remaining until deletion, by #{item.user.name}</small>"
    output.html_safe
  end
end
