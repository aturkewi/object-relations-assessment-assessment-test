class Customer
  attr_accessor :first_name, :last_name

  @@all = []

  def initialize(name)
    @first_name = name.split(" ")[0]
    @last_name = name.split(" ")[1]
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.find_by_name(full_name)
    all.find{|customer| customer.full_name == full_name}
  end
  
  def self.find_all_by_first_name(first_name)
    all.select{|customer| customer.first_name == first_name}
  end
  
  def self.all_names
    all.map{|customer| customer.full_name}
  end

  def full_name
    "#{first_name} #{last_name}"
  end
  
  def add_review(content, restaurant)
    Review.new(content, self, restaurant)
  end
end
