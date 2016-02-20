def change(change_due)
  coins = {"quarters" => 0, "dimes" => 0, "nickles" => 0, "pennies" => 0}

  if change_due >= 5
    coins["nickles"] = 1
    coins["pennies"] = change_due - 5
  else 
    coins["pennies"] = change_due
  end
  
  coins

end