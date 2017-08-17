# or I could put my menu in an array
#example options = ['mkdir', 'cp', 'cd', 'ls', 'rm', 'Press 6 to quit' ]
#then carry the array into the def command(options),
#Then set the options.each_with_index and have index + 1 to choose options
def command
  puts "Welcome to the cheatsheet",""
  puts "Which command would you like to choose?", ""
  puts "1: mkdir", "2: cp", "3: cd", "4: ls", "5: rm","6: Press 6 to quit",
  "7: to search"
  input = gets.strip
  case input
  when '1'
    puts `man mkdir`
    command
  when '2'
    puts `man cp`
    command
  when '3'
    puts `man cd`
    command
  when '4'
    puts `man ls`
    command
  when '5'
    puts `man rm`
    command
  when '6'
    puts 'Bye!'
  when '7'
    puts 'Enter what you would want to search'
    answer = gets.strip
    puts `man #{answer}`
    command
  else
    puts "Invalid entry."
    command
  end

end
command
