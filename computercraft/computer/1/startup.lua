term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.yellow)
print"\n--Birb's Terrible Create CC:Tweaked Compat Tests--\n"
term.setTextColor(colors.white)
term.write"use the "
term.setTextColor(colors.yellow)
term.write"test "
term.setTextColor(colors.white)
print"command to run the 6 serial tests"

term.write"use the "
term.setTextColor(colors.yellow)
term.write"reload "
term.setTextColor(colors.white)
print"command to force a reload (done automatically by the test command)"

term.write"use "
term.setTextColor(colors.yellow)
term.write"edit test "
term.setTextColor(colors.white)
print"command to see the enabled tests inside of:"
term.setTextColor(colors.yellow)
term.write"local "
term.setTextColor(colors.lightGray)
print"tests = {"
print"..."
print"}"
term.setTextColor(colors.white)
term.write"and use "
term.setTextColor(colors.green)
term.write"-- "
term.setTextColor(colors.white)
print"to comment out the tests you want to skip"
print"there is no documentation, yell at birbirl for help\n"
