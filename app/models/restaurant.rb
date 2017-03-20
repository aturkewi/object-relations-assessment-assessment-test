class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
  end
  
  def self.all
    @@alls
  end
  
  def self.find_by_name(name)
    all.find{|r| r.name == name}
  end
  
  def reviews
    Review.all.select{|review| review.restaurant == self}
  end
  
  def customers
    reviews.map{|review| review.customer }.uniq
  end

end
