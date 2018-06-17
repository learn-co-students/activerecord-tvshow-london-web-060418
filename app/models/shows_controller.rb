def highest_rating
  show[:rating].maximum   #???
end


def most_popular_show
  show.highest_rating[:name]   #???
end
