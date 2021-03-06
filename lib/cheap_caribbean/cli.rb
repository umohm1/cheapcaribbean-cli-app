class CheapCaribbean::CLI
  
  
  def call
    CheapCaribbean::Scraper.scrape_deals
    list_deals
    menu
    goodbye
  end

  
  def list_deals
    puts ""
    puts "********** AFFORDABLE TRAVEL DEALS. BOOK NOW! **********"
    puts ""
    CheapCaribbean::Deal.all.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name}"
    end   
  end


  def menu
    input = nil
    while input != 'exit'
    puts ""
    puts "Which deal would you like to view, pick a number?"
    puts "Enter 'list' to view the deals again or 'exit' to exit the program"
    puts ""
    input = gets.strip.downcase
      if input.to_i >= 1 && input.to_i <= 6 
         deal = CheapCaribbean::Deal.pick_deal(input.to_i - 1)
        display_details(deal)
    elsif input == "list"
        list_deals
    elsif input != 'exit'
        puts "Please input a number between 1-#{CheapCaribbean::Deal.all.size}, exit or list"
      end
    end
  end


  def goodbye
    puts "Don't forget to come back for more deals!"
  end

  def display_details(deal)
    puts "#{deal.name}" 
    puts " "
    puts "#{deal.destination}" 
    puts " "
    puts "#{deal.description}" 
    puts " "
    puts "Price #{deal.price}" 
  end
end
