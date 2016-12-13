class CheapCaribbean::CLI

    def call
      list_deals
      menu
      goodbye
    end

#puts travel deals for user to view
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

    def goodbye
    end

  end
