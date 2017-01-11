#CLI controller as in the music controller :)

class BringFido::CLI

  def call
    puts "Don't you forget to bring your doggo"
    list_options
    menu
    end_menu
  end

  def list_options
    puts "Here is a list of parks followed by their locations!"
    @bring = BringFido::Bring.parks
    @bring.each.with_index(1) do |park, i|
      # binding.pry
      puts "#{i}. #{park.name} #{park.location} #{park.description}"
    end
  end

  def menu
    input = nil
      while input != "exit"
         puts "Look at all these parks! Type 'list' to see a list, type 'exit' to exit"
      input = gets.strip.downcase
      if input.to_i > 0
        the_parks = @bring[input.to_i-1]
        puts "#{the_parks.name} #{the_parks.location} #{the_parks.description}"
      elsif input == "list"
        list_options
    else
      puts "You don't how to use a computer doggo! Go get your humane!"
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
    puts "Make your dog happy, go to the park!"
  end

end
