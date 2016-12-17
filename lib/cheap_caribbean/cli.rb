class CheapCaribbean::CLI
  def call
    list_deal
    menu
    goodbye
  end

  private

  # the list_deals method will put the travel deals to the console for user
  # to view in numericle order
  def list_deal
    puts ""
    puts "********** AFFORDABLE TRAVEL DEALS. BOOK NOW! **********"
    puts ""
    CheapCaribbean::Deal.all.each.with_index(1) do |deal, i|
      puts "#{i}. #{deal.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts ""
      puts "Which deal would you like to view, pick a number?"
      puts "Enter 'list' to view the deals again or 'exit' to exit the program"
      puts ""
      input = gets.strip.downcase
      if input.to_i >= 1 && input.to_i <= 6 # look for input between 1-6
        deal = CheapCaribbean::Deal.pick_deal(input.to_i - 1)
        display_details(deal)
      elsif input == "list"
        list_deal
      else
        puts "Please input a number between 1-6 or exit or list"
      end
    end
  end

  def goodbye
    puts "Don't forget to come back for more deals!"
  end

  def display_details(deal)
    puts "#{deal.name}" 
    puts "#{deal.destination}" 
    puts "#{deal.description}" 
    puts "#{deal.price}" 
  end
end
