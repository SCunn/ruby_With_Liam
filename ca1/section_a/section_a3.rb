=begin
NCI Server Side Web Technologies CA1
Tutor: Liam McCabe
CA Section A - part 3 

-  Create a program that outputs 10 times the phrase “Ruby is such fun and we love to learn it”  

open the correct file path in the terminal and run command $ ruby section_a3.rb
eg.
ec2-user:~/environment/ca1/section_a $ ruby section_a3.rb

Created by Shane Cunningham 07/02/2019
=end




 #while loop
i = 0               
while i < 10                                            # while will loop this block of code as long as the condition i < 10 is true
    puts "Ruby is such fun and we love to learn it"     # This string will output until i < 10 is false
    i = i + 1                                           # here is where the value i = 0 is incremented by 1 until the condition becomes false
end

#####Shorthand version, .times method

#10.times{puts "Ruby is such fun and we love to learn it"}    # loop the string 10 times