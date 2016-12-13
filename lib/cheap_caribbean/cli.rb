class CheapCaribbean::CLI

    def call
      list_deals
      menu
      goodbye
    end

#the list_deals method will put the travel deals to the console for user to view in numericle order
    def list_deals
      puts " "
      puts "********** AFFORDABLE TRAVEL DEALS. BOOK NOW! **********"
      puts " "
      CheapCaribbean::Deal.each_with_index(1) do |deal, i|
        puts "#{i}. #{deal.name}"
    end
  end

    def menu
      
    end

  end
