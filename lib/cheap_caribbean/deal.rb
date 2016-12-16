require 'nokogiri'
require 'open-uri'

module CheapCaribbean
end

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
      destination = deal.css('a[gatrackitem=DestinationURL]').text.to_s.strip
      description_link = deal.css('.mobileTallAdDesc>span.secondaryLink>a').attribute('href')
      description_url = "http://www.cheapcaribbean.com#{description_link}"
      description = open(description_url).read.to_s.strip
      price = deal.css('.estPrice.price.bold.taPriceDiv').text.to_s.strip
      puts "#{name} - #{destination} - #{description} - #{price}"
      puts " "
    end
  end
end

CheapCaribbean::Deal::scrape