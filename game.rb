puts "Let's play a quick round of rock-paper-scissors! The instructions are as follows:\nRock-paper-scissors is a hand game usually played by two people, where players simultaneously form one of three shapes with an outstretched hand. The rock beats scissors, the scissors beats paper and the paper beats rock; if both players throw the same shape, the game is tied."
puts "Since I am a computer and don't have any hands, I will ask you to type your selection instead."
puts "Type (r) to choose rock, (p) to choose paper, or (s) to choose scissors."
puts "\nI am ready whenever you are, type the appropriate letter for whichever shape you would like to throw now!"

player = gets.chomp
shape1 = case player
when "r" then "Rock"
when "p" then "Paper"
when "s" then "Scissors"
else "\nI am sorry but #{player} is not an appropriate shape selection, try again!"
end

if shape1 != "Rock" && player != "Paper" && player != "Scissors"
  puts shape1
  exit
else
  puts " "
end

puts "Player chose #{shape1}."

computer = rand (3)
shape2 = case computer.to_s
when "0" then "Rock"
when "1" then "Paper"
else "Scissors"
end

puts "Computer chose #{shape2}"

if shape1 == shape2
  puts "Tie!"
elsif player == "r" && computer == 2 || player == "s" && computer == 1 || player == "p" && computer == 0
  puts "#{shape1} beats #{shape2}!! Player wins!"

else
  puts "#{shape2} beats #{shape1}!! Computer wins!"
end
