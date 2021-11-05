puts "Welcome to my Number Guessing Game! "

print "Enter a number: "
max_num = gets
max_num = max_num.to_i

random_num = rand(0..max_num)
count = 0
attempt = 0
puts "--You'll have a maximum number of 3 guesses in total--"

while true
    count += 1
    attempt += 1
    print "Make a guess between 0 to #{max_num} (Attempt: #{attempt}): "
    guess = gets
    guess = guess.to_i

    if guess == random_num
        puts "You've got it correct in #{count} guesses!"
        break
    elsif count >= 3
        puts "Game over! "
        break
    elsif guess > max_num
        puts "*Enter a number below than #{max_num}*"
        count = 0
        attempt = 0
    else
        puts "You've got it incorrect:/"
    end
end