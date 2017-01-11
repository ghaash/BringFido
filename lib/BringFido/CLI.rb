#CLI controller as in the music controller :)

class BringFido::CLI

  def call
    puts "Don't you forget to bring your doggo"
    list_options
    menu
    end_menu
  end

  def list_options
    puts "Here is a list of parks!"
    @bring = BringFido::Bring.parks
    @bring.each.with_index(1) do |bring, i|
      # binding.pry
      puts "#{i}. #{bring.name} + #{bring.location} -- #{bring.description}"
    end
  end

  def menu
    input = nil
      while input != "exit"
         puts "Where do you want to bring Fido today? Type 'list' to see a list, type 'exit' to exit"
      input = gets.strip.downcase
      if input.to_i > 0
        the_bring = @bring[input.to_i-1]
        puts "#{the_bring.name} --- #{the_bring.location} --- #{the_bring.description}"
      elsif input == "list"
        list_options
    else
      puts "You dont how to use a computer doggo! Go get your humane!"
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
    puts "Make your dog happy by taking him to the park!"
  end

end
