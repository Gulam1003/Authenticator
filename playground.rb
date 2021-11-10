def authenticator_f(username1,password1,user_arr)
  user_arr.each do |user|
    if user[:username] == username1 && user[:password] == password1
      return user
    end
  end
  "Credentials were not correct"
  end
users = [
          { username: "Gulam", password: "Ansari" },
          { username: "Sarfaraz", password: "Ahmad" },
          { username: "Taksis", password: "Parvez" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
puts "Welcome to the authenticator"
28.times {print "*"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"
attempts=1
while attempts<4
  print "Username:"
  username = gets.chomp
  print "Password:"
  password = gets.chomp
  op=authenticator_f(username,password,users)
  puts op
  puts "Press escape to quit or any other key to continue: "
  input = gets.chomp.downcase
  break if input == "n"
  attempts+= 1
end
puts "3 Attempts is over" if attempts == 4
