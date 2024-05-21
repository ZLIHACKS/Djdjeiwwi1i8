local function lol(lib)
   local rangeList = gg.getRangesList(lib)  
for _, v in ipairs(rangeList) do 
      if v.state == "Xa" then return v.start  
         end  
    end  
end

function PATCH(libname_or_offset, offset_or_value, value_or_etype, etytype)
    local libBase = nil
    local offset = nil
    local value = nil
    if type(libname_or_offset) == "string" then
        libBase = lol(libname_or_offset)
        if libBase == nil then return end
        offset = offset_or_value
        value = value_or_etype
    else
        offset = libname_or_offset
        value = offset_or_value
        etytype = value_or_etype
        libBase = lol("libil2cpp.so")
    end
    if value == nil then
        value = "C0035FD6" else
        value = value:gsub("%s+", "") 
    end
    local valuesTable = {}
    local valueSize = math.ceil(#value / 2)
    etytype = etytype or 1
    for i = 1, #value, 2 do
        local entry = {}
        entry.address = libBase + offset + math.floor((i - 1) / 2)
        entry.flags = etytype
        local entryValue = value:sub(i, i + 1)
        if etytype == 1 then
            entry.value = tonumber(entryValue, 16)
        else
            entry.value = tonumber(entryValue)
        end
        table.insert(valuesTable, entry)
    end
    gg.setValues(valuesTable)
end



PATCH(0x14AEB54)
PATCH(0x14AEB74)
PATCH(0x14AEB94)
PATCH(0x14C9350)
PATCH(0x14C947C)
PATCH(0x14C8E5C)
PATCH(0x128E9B4)--
PATCH(0x14C7F28)
PATCH(0x15346E0)
PATCH(0x14AA8EC)
gg.alert("done") 

