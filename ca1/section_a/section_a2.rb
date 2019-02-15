=begin
NCI Server Side Web Technologies CA1
Tutor: Liam McCabe
CA Section A - part 2 

- Create a program that takes a user input of and outputs the value + 21% Vat. Use a string to
inform the user what the total is and include the answer in the output string. 

open the correct file path in the terminal and run command $ ruby section_a2.rb
eg.
ec2-user:~/environment/ca1/section_a $ ruby section_a2.rb

Created by Shane Cunningham 07/02/2019
=end


print "Please enter value of item :  "      # outputs this string without starting a new line

b4vat = gets.to_i                           # collects the users input, stores it in the variable b4Vat, The to_i method converts the string returned from gets. to an integer (i), a number without a decimal point. 
 
total = b4vat * 1.21                        # create variable called total that multiplys and stores the users input 21%

puts "(#{b4vat} + 21% Vat) ="               # outputs string including users input 

puts "Total = #{total}"                     # outputs string including the total variable (users input multiplied by 1.21 )

