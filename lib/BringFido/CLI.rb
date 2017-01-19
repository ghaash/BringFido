class BringFido::CLI

  def call
    puts ""
    puts "Don't you forget to bring your doggo!"
    menu
    end_menu
  end

  def menu
    input = nil
      while input != "exit"
        puts ""
         puts "Where do you want to bring Fido today? Type 'parks' to see the list of park names, type 'location' to see a list of their locations, type 'description' to see a list of their descriptions, type 'exit' to exit"
      input = gets.strip.downcase

      if input == "parks"
        @scraper = BringFido::Scraper.parks
        @scraper.each do |parks|
        puts "#{parks.name}"
      end

    elsif input == "location"
      @scraper = BringFido::Scraper.parks
      @scraper.each do |parks|
      puts "#{parks.location}"
    end

    elsif input == "description"
          @scraper = BringFido::Scraper.parks
          @scraper.each do |parks|
          puts "#{parks.description}"
        end

    else
      puts ""
      puts "You don't how to use a computer doggo! Go get your humane!"
      puts ""
    end
    end
  end

  def end_menu
    puts "Make your dog happy by taking him to the park!"
  end

end
