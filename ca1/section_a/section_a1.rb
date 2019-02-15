=begin
NCI Server Side Web Technologies CA1
Tutor: Liam McCabe
CA Section A - part 1 

-Create a program that asks a user to enter their name that then outputs a greeting which includes the
inputted variable name. 

open the correct file path in the terminal and run command $ ruby section_a1.rb
eg.
ec2-user:~/environment/ca1/section_a $ ruby section_a1.rb

Created by Shane Cunningham 07/02/2019
=end

# puts outputs this string to the bash terminal which prompts the user to enter their name
puts "Hi, what's your name? (enter your name)"    
 # name = gets collects the users input (string) and stores it in the variable called "name". 
name = gets                                      
 # This last line of code outputs this string and the variable "name"(users input).
 #The syntax #{variable_name} displays the variable as a string, in a string.
 #This method is called Interpolation
puts "Nice to meet you #{name}"                  