require 'nokogiri'
require 'open-uri'

module CheapCaribbean
end

class CheapCaribbean::Deal

  attr_accessor :name, :destination, :description, :price 

  @@all = []

  def initialize(name = " ", location = " ")
    @name = name
    @destination = destination
    @description = description
    @price = price
  end

  def to_s
    puts "#{name} - #{destination} - #{description} - #{price}"
    puts " "
  end

  def self.scrape
    content = open("http://www.cheapcaribbean.com/").read
    doc = Nokogiri::HTML(content)
    doc.css("div.content.oneColumn.mobileHomeDeal").each do |deal|
      new_deal = CheapCaribbean::Deal.new
      new_deal.name = deal.css('h2').text.to_s.strip
      new_deal.destination = deal.css('a[gatrackitem=DestinationURL]').text.to_s.strip
      description_link = deal.css('.mobileTallAdDesc>span.secondaryLink>a').attribute('href')
      description_url = "http://www.cheapcaribbean.com#{description_link}"
      new_deal.description = open(description_url).read.to_s.strip
      new_deal.price = deal.css('.estPrice.price.bold.taPriceDiv').text.to_s.strip
      @@all << new_deal
    end
    @@all
  end
end

deals = CheapCaribbean::Deal.scrape
deals.each_with_index do |deal, index|
  puts "#{index+1}. #{deal.name}" 
end