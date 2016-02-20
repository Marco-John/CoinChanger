def change(change_due)
  coins = {"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 0}
dimes = 10
nickles = 5
pennies = 1

  if change_due >= dimes
    coins["dimes"] = 1
    change_due = change_due - dimes
    
  end
  
  if change_due >= nickles
    coins["nickles"] = 1
    change_due = change_due - nickles
  end
  
  if change_due >= pennies
     coins["pennies"] = change_due
  end
    
  coins

end