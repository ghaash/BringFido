#CLI controller as in the music controller :)

class BringFido::CLI

  def call
    puts "Don't you forget to bring your doggo"
    list_options
    menu
    end_menu
  end

  def list_options
    puts "the 3x8 grid of what I want to scrape"
    @bring = BringFido::Bring.parks
    @bring.each.with_index(1) do |bring, i|
      puts "#{i}. #{bring}"
    end
  end

  def menu
    input = nil
      while input != "exit"
         puts "Where do you want to bring Fido today? Pick a number or type 'list' to see a list, and lastly type 'exit' to exit"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @bring[input.to_i-1]
      elsif input == "list"
        list_options
    else
      puts "you can't use a computer doggo!"
    end
#        case input
#          when "1"
#            puts "info on 1st 3x8"
#          when "2"
#            puts "info on 2 3x8"
#        when "list"
#          puts list_options
#        end
#      end
    end
  end

  def end_menu
    puts "You and your doggo are welcome any time!"
  end

end
