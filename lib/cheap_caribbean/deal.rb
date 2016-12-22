require 'pry'
require 'nokogiri'
require 'open-uri'

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
    content = open("http://www.cheapcaribbean.com/").read
    doc = Nokogiri::HTML(content)
    doc.css("div.content.oneColumn.mobileHomeDeal").each do |deal|
      name = deal.css('h2').text.to_s.strip
      destination = deal.css('a[gatrackitem=DestinationURL]').text
      description = deal.css('span.secondaryLink>a').text
      price = deal.css('.estPrice.price.bold.taPriceDiv').text
      puts "#{name} - #{destination} - #{description} - #{price}"
      binding.pry
    end
  end
end
