=begin
NCI Server Side Web Technologies CA1
Tutor: Liam McCabe
CA Section B

Section B
1. Create a program that will simulate an ATM.
This must
Welcome the user and ask them what they want to do:
a. Give them two options Quit or Start
b. If they choose Quit output thank you goodbye
c. If they choose start present them with three additional options
i) Withdraw Funds
ii) Lodge money
iii) View balance (Hint use a pre-set variable for the balance)
d. If they choose balance then output the balance followed by the message “Thank you
goodbye” (goodbye must be on a new line but only using one puts statement)
e. If they choose withdraw funds ask them how much they want to withdraw. Once the
amount is entered show the new balance followed by the message “Thank you goodbye”
(goodbye must be on a new line but only using one puts statement)
f. If they choose lodge ask them how much they want to lodge. Once the amount is entered
show the new balance followed by the message “Thank you goodbye” (goodbye must be on
a new line but only using one puts statement)

Created by Shane Cunningham 09/02/2019
=end

#a. Give them two options Quit or Start
puts "Welcome to your local ATM\nStart or Quit? (select 1 or 2)\n1 = Start\n2 = Quit"
start = gets           # set the persons choice so we can use it later

balance = 20000        #users bank balance
 
# b.  if user selects quit then say "Thank you, Goodbye"
if start.to_i == 2          #  convert the input to int and compare it to 2
    puts "Thank you, Goodbye"
    
# c.   else if user selects start give them 3 options, then get there answer for the next condition
# \n allows me to create a new line within my string
elsif start.to_i == 1
    puts "Would you like to: \ni) Withdraw Funds = 1\nii) Lodge money = 2\niii) View balance = 3\n(select 1, 2 or 3)"
    choice = gets
end

# d.  if user selects to view their current ballance, show them by including the balance variable into the string
if choice.to_i == 3 
    puts "Your current balance is: #{balance}\nThank you, Goodbye"
    
# e. If they choose withdraw funds ask them how much they want to withdraw. Once the
#amount is entered show the new balance followed by the message “Thank you goodbye”
#(goodbye must be on a new line but only using one puts statement)   

elsif choice.to_i == 1
    puts "How much would you like to withdraw?"
    take = gets
    newAmt = balance - take.to_i
    puts "Your new balance: #{newAmt}\nThank you, Goodbye"
    
#f. If they choose lodge ask them how much they want to lodge. Once the amount is entered
#show the lodgement added to the balance followed by the message “Thank you goodbye”    
elsif choice.to_i == 2
    puts "How much money would you like to lodge?"
    lodge = gets
    amt = balance + lodge.to_i
    puts "Your new balance: #{amt}\nThank you, Goodbye"
end
