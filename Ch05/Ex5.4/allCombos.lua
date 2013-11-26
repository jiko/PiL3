-- http://rosettacode.org/wiki/Combinations#JavaScript

function slice (array, start)
  local slice = {}
  for i=start, #array do
    table.insert(slice, array[i]) end
  return slice
end

function allCombos (array, m)
  local ret = {}
  local sub, nxt
  for i=1, #array do
    if m == 1 then
      table.insert(ret, array[i])
    else
      sub = allCombos(slice(array, i+1), m-1)
      for subi=1, #sub do
        nxt = sub[subi]
        if type(nxt) == 'string' then nxt = {nxt} end
        table.insert(nxt, 1, array[i])
        table.insert(ret, nxt)
      end
    end
  end
  return ret
end

for k, v in pairs(allCombos({"Crosby", "Stills", "Nash", "Young"},3)) do print(unpack(v)) end
