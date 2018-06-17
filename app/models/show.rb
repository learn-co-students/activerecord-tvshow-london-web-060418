class Show < ActiveRecord::Base

  def self.highest_rating
    Show.maximum("rating")   #or (:rating)
  end

  def self.most_popular_show
    highest = Show.highest_rating   #10
    Show.find_by(highest)
  end

  def self.lowest_rating
    Show.minimum("rating")
  end

# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
  def self.least_popular_show
    lowest = Show.lowest_rating   #2
    Show.where("rating == lowest")
  end

  def self.ratings_sum
    Show.sum("rating")
  end

  def self.popular_shows
      Show.where("rating > 5")
  end

  def self.shows_by_alphabetical_order
    Show.order("name")
  end

end
