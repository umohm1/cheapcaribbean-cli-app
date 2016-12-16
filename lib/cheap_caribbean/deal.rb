class CheapCaribbean::Deal

  attr_accessor :resort, :destination, :description, :price, :url

  @@all = []

  def initialize(name = " ", location = " ")
    @resort = resort
    @destination = destination
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
