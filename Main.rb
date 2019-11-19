=begin
  Zane Reisbig, CIS 116
  Submitting to Prof. Kennith Smith

  11/18/19 - 4:19 AM
=end


def Menu ### Basic Menu. also main function
  choices = ["1","2","3"] ### Faster than typing 3 more if statements
  choice = 0

  until choices.include?(choice) ### Goes thru until a real choice is chosen
    puts '''
    1:) Show Major Leauge Winners
    2:) Show Number of wins for team
    3:) Exit

    '''
    print "Choice: "
    choice = gets.chomp
  end

  if choice == "1"
    AllWins() ### Controls the alphabetical order requirement
  elsif choice == "2"
    Winner() ### Team lookup for wins
  elsif choice == "3"
    abort("Thanks for using")
  end

  Menu()
end

def AllWins ### Title
  teams = File.read("Teams.txt").split("\n") ### Opens the file for reading and splits it when a new line is discovered
  puts
  puts teams.sort ### The .sort function returns arrays in alphabetical order
  puts
end

def Winner ### Controls the team lookup and win counter
  puts
  puts "What team do you want to know about?"
  print "Team: "
  team = gets.chomp
  winners = File.read("Winners.txt").split("\n") ### Same as line 36
  wins = 0
  line = 0 ### This counts the line number that the team won on, it was for debugging but I liked it so I kept it in

  for i in winners
    line += 1
    if i.upcase == team.upcase
      puts "The #{team} won on line #{line}"
      wins += 1
    end
  end

  puts "The #{team} won #{wins} times"
end

Menu() ### Starts the program
