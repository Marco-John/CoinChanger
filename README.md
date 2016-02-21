# CoinChanger
Coin Change Program
Purpose: 	Create a Ruby program that will output the number of coins (quarters, dimes, nickels and pennies) when amount is inputted. Also, create a test ruby file to test coin change program from start to conclusion. 

Step 1 – Change Due 0
We started by creating a test file of “TestCoinChanger.rb that would test change due of 0 cents. We tested it against a hash of {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0} and pass in a value to “change_due”.

def	test_change_due_of_zero
	Assert_equal({“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}, change(0))
end

Next,  Create CoinChanger ruby file that has a function that can accept “change_due” and hash named “coins” contains all of the various coins as keys and the each key have a value of zero.  The values of each key will be the amount of coins in each denomination that will equal “change_due”.

def	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}
end

Step 2 – Change Due 1
Change test file that would test change due of 1 cent. We tested it against a hash of {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 1}.

def	test_change_due_of_1
	Assert_equal({“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 1}, change(1))
end

Next,  change “pennies” = 1 in  “coins” hash CoinChanger 

def	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 1}
end

Step 3 – Change Due 3 (change due value of 1 thru 4)
Change test file that would test change due of 3 cents. We tested it against a hash of {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 3}.

def	test_change_due_of_3
	Assert_equal({“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 3}, change(3))
end

Next, change “pennies” value to “change_due” in  “coins” hash CoinChanger.  This change will allow for the change due value to pass into “coins” hash key of “pennies”.

def	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = change_due}
end

Step 4 – Change Due 5 
Change test file that would test change due of 5 cents. We tested it against a hash of {“quarters” => 0, “dimes” => 0, “nickels” => 1, “pennies” = 0}.

def	test_change_due_of_5
	Assert_equal({“quarters” => 0, “dimes” => 0, “nickels” => 1, “pennies” = 0}, change(5))
end

Next, add “if-else” statement to CoinChanger in “change” function. This change will allow for change due of to set coins[“nickels”] to 1 and pass change due of less than 5 thru to coins[“pennies”] = change_due.  And call the “coins” hash outside of the if-else statement to set the values within the hash.  

def 	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}

	If	change_due >= 5
		coins[“nickels”] = 1
	else
		coins[“pennies”] = change_due
	end
	
	coins
end
		
ALL  FURTHER CHANGES TO “TestCoinChanger” ARE SIMILAR 
Simply, change the appropriate coin quantity to the correct value and continue to replace the total change due in change(“change_due”)

Sample of Change Due of 6 Cents 

def	test_change_due_of_6
	Assert_equal({“quarters” => 0, “dimes” => 0, “nickels” => 1, “pennies” = 1}, change(6))
end

Step 5 – Change Due 6 
Change test file that would test change due of 6 cents.  Add equation that will set the value of coins[“pennies”] by subtract the value of a nickel(5) from “change_due”
	
If	change_due >= 5
		coins[“nickels”] = 1
		coins[“pennies”] = change_due -5
	else
		coins[“pennies”] = change_due
	end

Step 6 – Change Due 10 
Change test file that would test change due of 10 cents.  Add equation that will set the value of coins[“dimes”] by subtract the value of a dime(10) from “change_due”
	
If	change_due >= 10
		coins[“dimes”] = 1
		coins[“pennies”] = change_due -10
elsif	change_due >= 5
		coins[“nickels”] = 1
		coins[“pennies”] = change_due -5
	else
		coins[“pennies”] = change_due
	end

Step 7 – Change Due 15 
Change test file that would test change due of 15 cents.  Add equation that will set the value of coins[“dimes”] by subtract the value of a dime(10)  & a nickel(5) from “change_due”
	
If	change_due >= 15
		coins[“dimes”] = 1
		coins[“nickels”] = 1
		coins[“pennies”] = change_due -15
elsif	change_due >= 10
		coins[“dimes”] = 1
		coins[“pennies”] = change_due -10
elsif	change_due >= 5
		coins[“nickels”] = 1
		coins[“pennies”] = change_due -5
	else
		coins[“pennies”] = change_due
	end

Step 8 – Refactor File - IMPORTANT 
The “If-else” statement is broken down into 3 individual “If”statements by setting coin values and passing the values into the individual “If”statements and setting value for “change_due” at the end of each “If” statement.

def 	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}
	dimes = 10
nickels = 5
pennies = 1

	If	change_due >= dimes
		coins[“dimes”] = 1
		change_due = change_due – dimes
	end
	If	change_due >= nickels
		coins[“nickels”] = 1
		change_due = change_due – nickels
	end
	If	change_due >= pennies
		coins[“pennies”] = 1
		change_due = change_due – pennies
	end

	coins
end


 
Step 9 – Add While Loops to Code & Change for 20 
Replace “if” conditionals with “while” conditionals, so that it will cycle through the conditionals to catch the 2 dimes needed for change due of 20. Also add the “coins’ hash value to add the additional coins.

while	change_due >= dimes
	coins[“dimes”] = coins[“dimes”]  + 1
	change_due = change_due – dimes
end
while	change_due >= nickels
	coins[“nickels”] = coins[“nickels”] + 1
	change_due = change_due – nickels
end
while	change_due >= pennies
	coins[“pennies”] = coins[“pennies”] + 1
	change_due = change_due – pennies
end

Step 10 – Add Code for Quarters & Change for 94
Add code for quarters

def 	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}
quarters = 25	
dimes = 10
nickels = 5
pennies = 1

while	change_due >= quarters
	coins[“quarters”] = coins[“quarters”]  + 1
	change_due = change_due – quarters
end


Step 11 – Add Hash for Coin Values & Condense # of While Statements with “each do” function
Add Hash for coin values and eliminate individual variables.  Add “each do” functions to reduce “while” conditionals from 4 to 1 & also place “coin_values” keys & value within the “while” conditional.

def 	change(change_due)
	coins = {“quarters” => 0, “dimes” => 0, “nickels” => 0, “pennies” = 0}
	coin_values = {“quarters” => 25, “dimes” => 10, “nickels” => 5, “pennies” = 1}

coin_values.each do |coin, value|

while	change_due >= coin
	coins[“value”] = coins[“value”]  + 1
	change_due = change_due – coin
end
end
end
