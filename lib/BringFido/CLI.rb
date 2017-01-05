#CLI controller as in the music controller :)

class BringFido::CLI

  def call
  puts "Don't you forget to bring your doggo"
  list_options
  menu
  end

  def list_options
  puts "the 3x8 grid of what I want to scrape"
  end

  def menu
  puts "Where do you want to bring Fido today? Pick a number"
  input = gets.strip
  case input
  when "1"
    puts "info on 1st 3x8"
  when "2"
    puts "info on 2 3x8"
  end
  end

end
