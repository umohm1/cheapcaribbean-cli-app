class CheapCaribbean::CLI

    def call
      list_deal
      menu
      goodbye
    end

#the list_deals method will put the travel deals to the console for user to view in numericle order
    def list_deal
      puts ""
      puts "********** AFFORDABLE TRAVEL DEALS. BOOK NOW! **********"
      puts ""
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
       if input.to_i > 0 && input.to_i < 6 # look for input between 1-5
         deal = CheapCaribbean::Deal.pick_deal(input.to_i)
         display_details(deal)
       elsif input == "list"
         list_deal
       elsif input == "exit"
         goodbye
      else
         puts "Please input a number between 1-7"
      end
    end
  end     #not sure how many ends I should have.

    def goodbye
      puts "Don't forget to come back for more deals!"
    end

    def display_details(deal)
      puts '{#deal.details}'
    end
  end
