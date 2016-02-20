def change(change_due)
  coins = {"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 0}
dimes = 10
nickles = 5
pennies = 1

  while change_due >= dimes
    coins["dimes"] = coins["dimes"] + 1
    change_due = change_due - dimes
  end
  
  while change_due >= nickles
    coins["nickles"] = coins["nickles"] + 1
    change_due = change_due - nickles
  end
  
  while change_due >= pennies
     coins["pennies"] = coins["pennies"] + 1
     change_due = change_due - pennies
  end
    
  coins
  

end