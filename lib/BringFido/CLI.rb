class BringFido::CLI

  def call
    puts ""
    puts "Don't you forget to bring your doggo!"
    puts ""
    display_parks
    menu
    end_menu
  end

def display_parks
  BringFido::Scraper.scrape_parks
  BringFido::Park.all.each.with_index(1) do |park, i|
  puts "#{i}. #{park.name}"
end
end

  def menu
    input = nil
      while input != "exit"
        puts ""
         puts "Where do you want to bring Fido today? Choose a number to see where the park is located and a description, or type 'exit' to exit"
      input = gets.strip.downcase
      if input == "parks"
        display_parks
    elsif
      more_info(input)
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

  def more_info(input)
    BringFido::Scraper.scrape_more_info(input)
      parks = BringFido::Park.find_by_number(input.to_i - 1)
      puts "Location: #{parks.location}"
      puts "Description: #{parks.description}"
    end

end
