  class CheapCaribbean::Deal

    attr_accessors :name, :location, :description, :url

   @@all = []

   def initialize(name = " ", location = " ")
     @name = name
     @location = location
     @description = description
     @url = url
     scrape_details
   end

   def self.scrape_cheap_caribbean
     doc = 
   end

   end
