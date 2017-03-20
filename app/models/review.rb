class Review
  attr_reader :content, :customer, :restaurant
  
  @@all = []
  
  def initialize(content, customer, restaurant)
    @content = content
    @customer = customer
    @restaurant = restaurant
    
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

