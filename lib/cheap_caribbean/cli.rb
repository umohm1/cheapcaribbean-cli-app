class CheapCaribbean::CLI

    def call
      list_deal
      menu
      goodbye
    end

#the list_deals method will put the travel deals to the console for user to view in numericle order
    def list_deal
      puts " "
      puts "********** AFFORDABLE TRAVEL DEALS. BOOK NOW! **********"
      puts " "
      CheapCaribbean::Deal.each_with_index(1) do |deal, i|
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
       if inputs == "list"
         list_deal
       if input.to_i < 0 && input.to_i < 8 # look for input between 1-7
         deal = CheapCaribbean::Deal.select_deal(input.to_i)

    end
  end

  end
