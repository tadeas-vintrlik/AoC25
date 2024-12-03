local file = assert(io.open("input"), "Could not open file")

local total = 0
for line in file:lines() do
    for num1, num2 in string.gmatch(line, "mul%((%d%d?%d?),(%d%d?%d?)%)") do
        total = total + tonumber(num1) * tonumber(num2)
    end
end

print("Part 1: " .. total)
