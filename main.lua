local Lummander = require "lummander"

local cli = Lummander.new{
    title = "JK Commander",
    tag = "jcommander",
    description = "Simple Lua based cli tool",
    version = "0.0.1",
    author = "Jesse Koldewijn",
    root_path = "",
    theme = "acid",
    flag_prevent_help = false
  }

cli:command("welcome", "Welcome yourself to this cli")
   :action(function(parsed, command, app)
     print("Thanks for welcoming me!")
end)

cli:command("add <value1> <value2>", "calculate two values")
   :option(
        "option1","o","first value",nil,"normal","0")
   :option(
        "option2","p","second value",nil,"normal","0")
   :action(function(parsed, command, app)
        print("".. parsed.value1.. "+"..parsed.value2.." = " ..
              tostring(tonumber(parsed.value1) + tonumber(parsed.value2)))
end)

cli:parse(arg)