class CheapCaribbean::Deal

  attr_accessor :name, :location, :description, :price, :url

  @@all = []

  def initialize(name = " ", location = " ")
    @name = name
    @location = location
    @description = description
    @price = price
    @url = url
    scrape_details
  end

  def self.scrape_cheap_caribbean
    binding.pry
    doc = Nokogiri::HTML(open('http://www.cheapcaribbean.com/'))

  end
end
