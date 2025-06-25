sleep(1)
commands.tp"@a ~-2 ~-0.5 ~"
while true do
    os.pullEvent("redstone")
    if redstone.getInput("top") then
        commands.clone("~ ~16 ~ ~15 ~31 ~15 ~ ~ ~ masked")
        sleep(0.25)
        commands.kill"@e[type=item,distance=..23]"
        commands.kill"@e[type=create:package,distance=..23]"
    end
end
