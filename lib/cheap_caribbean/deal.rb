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
    content = open('http://www.cheapcaribbean.com/’).read
    doc = Nokogiri::HTML(content)
    doc.css("div.content.oneColumn.mobileHomeDeal").each do |deal|
      name = deal.css('h2').text.to_s.strip
      destination = deal.css('a[gatrackitem=DestinationURL]').text
      description = deal.css('.mobileTallAdDesc').text
      price = 
      puts "#{name} - #{destination} - #{description}"
    end
  end
end

end
