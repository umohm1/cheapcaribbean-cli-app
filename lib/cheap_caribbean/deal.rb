class CheapCaribbean::Deal

  attr_accessor :name, :destination, :description, :price, :url

  @@all = []

  def initialize(name = " ", location = " ")
    @name = name
    @destination = destination
    @description = description
    @price = price
    @url = url
    scrape_details
  end

  def self.scrape
    binding.pry
    doc = Nokogiri::HTML(open('http://www.cheapcaribbean.com/'))
    #doc.css("div.content.oneColumn.mobileHomeDeal").each do |deal|
    name = doc.css("h2").text
    #doc.css("h2 [itemprop='name']")

  end
end
