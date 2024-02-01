if gg.PACKAGE == "com.TencentMobile" then
gg.alert("WELCOME")
else
print("Use ZLI GG  To Run Script")
os.exit()
end
on = "☑️ON☑️"
off = "❎OFF❎"
NIGA = off
AI = off

if gg.isPackageInstalled("sstool.only.com.sstool") then
gg.alert("Please Uninstall SSTOOL App.")
os.exit() 
gg.setVisible(true)
print("Please Uninstall SSTOOL App")
end

if gg.isPackageInstalled("com.germany.decompile") then
gg.alert("Please Uninstall Lua Dec App.")
os.exit() 
gg.setVisible(true)
print("Please Uninstall Lua Dec App")
end

if gg.isPackageInstalled("com.hckeam.mjgql") then
gg.alert("Please Uninstall DEGG App.")
os.exit() 
gg.setVisible(true)
print("Please Uninstall DEGG App")
end

if gg.isPackageInstalled("com.badbunny.luac") then
gg.alert("Please Uninstall BadBunny Lua Decrypter.")
os.exit() 
gg.setVisible(true)
print("Please Uninstall BadBunny Lua Decrypter")
end

if gg.isPackageInstalled("com.zyt.sstool.premium") then
gg.alert("Please Uninstall SSTOOL App.")
os.exit() 
gg.setVisible(true)
print("Please Uninstall SSTOOL App")
end

local n, startAddress, endAddress = nil, 0, 0
local function name(lib)
	if n == lib then
		return startAddress, endAddress
	end
	local ranges = gg.getRangesList(lib or 'libil2cpp.so')
	for i, v in ipairs(ranges) do
		if v.state == "Xa" then
			startAddress = v.start
			endAddress = ranges[#ranges]['end']
			break
		end
	end
	return startAddress, endAddress
end

local function setHexMemory(libname, offset, hex)
	name(libname)
	local t, total = {}, 0
	for h in string.gmatch(hex, "%S%S") do
	    table.insert(t, {
	        address = startAddress + offset + total,
	        flags = gg.TYPE_BYTE,
	        value = h .. "r"
	    })
	    total = total + 1
	end
	local res = gg.setValues(t)
	if type(res) ~= 'string' then
		return true
	else
		gg.alert(res)
		return false
	end
end
gg.setVisible(false)
function START()
T = gg.getTargetPackage()
if T == "com.bandainamcoent.opbrww" then 
menu = gg.multiChoice({"Bypass (bug)","Aura Kill","Long Range ON","Long Range OFF",AI.." - STOP AI-BOTS",NIGA.." - Disable Jump","⛔ᴇxιт ғʀoм scʀιᴘт⛔" },nil,"Oɴᴇ Pιᴇcᴇ Bouɴтʏ Rusн Scʀιᴘт  \nмᴀᴅᴅᴇᴅ ʙʏ : ZLI HACKS \nMy Group: https://t.me/OPBRHACKERS\nTelegram Username = @ZLI_HACKS")
if menu == nil then
else
if menu[1] then THISSHIT() end
if menu[2] then FUCKTHISSHIT() end
if menu[3] then LONG() end
if menu[4] then OFF() end
if menu[5] then STOP() end
if menu[6] then JUMP() end
if menu[7] then
gg.setVisible(true)
os.exit() 
end
end
else
gg.setVisible(true)
gg.alert("Make Sure You Choosed Opbr Highest data Process")
os.exit()
gg.clearResults()
gg.clearList()
end


AGYT = -1
end

function THISSHIT() 
gg.clearResults()
gg.setVisible(false)
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x125B65C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x125B664, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x125B670, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x125B678, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x125BD78, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x13266D4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x13266F4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x13F7484, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFBD6B0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFBD6B8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFBD960, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFBDE58, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFBDEB0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC04F4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC04FC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC07A8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC08B8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC0910, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC488C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC4894, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC4B40, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC4F34, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xFC4F8C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC72784, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0x11F11F4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC736F8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC75FB0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC75FE0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7B7F8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7B804, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC6AD64, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC72628, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7277C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC727FC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC72A70, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC72C64, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC728D4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC73830, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC736F8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC73E6C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC73FAC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC73F40, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC746AC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC747E0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7496C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC74B60, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC74B94, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC74BD8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC748C0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC753CC, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0xC7550C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC756B0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC758A4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC755E4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC75E38, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC765A8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC78160, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC782DC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC78444, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC785E0, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC787D8, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC78824, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC78524, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC79218, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC791A4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC79038, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A278, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A2EC, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A360, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A3D4, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A46C, "C0 03 5F D6")
gg.setVisible(false)
setHexMemory("libil2cpp.so", 0xC7A4E0, "C0 03 5F D6")
gg.setVisible(false)
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.clearList()
gg.clearResults()
gg.setVisible(false) 
gg.toast("☑️bypass Activated☑️") 
end
function FUCKTHISSHIT()
gg.setVisible(false) 
gg.clearResults()
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x120DE5C, "C0 03 5F D6")
gg.clearResults()
gg.clearList()
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x120EA44, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x121019C, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x12E0C98, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13AACE4, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x13E5A5C, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13E5B68, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x11C40FC, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x11C2BC8, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x1201F4C, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x1201F6C, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x12100A0, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x12100A0, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x12100A8, "C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x12100B4, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x11E1DBC, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x11F0B88, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x11F146C, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x11E2194, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false)
 gg.clearResults()
gg.clearList()
setHexMemory("libil2cpp.so", 0x13C155C, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13B31EC, "C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13EFBF4, "20 00 80 D2")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13E5908, "C0 03 5F D6")
gg.clearResults()
gg.setVisible(false) 
gg.setVisible(false)
gg.clearResults()
gg.setVisible(false)
gg.clearList()
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.clearList()
gg.clearResults()
gg.setVisible(false)
gg.toast("☑️Aura Kill Activated☑️")
end

function LONG()
gg.alert("Dont Forgot To Turn Off Long Range when match finishes") 
N = gg.choice({"Long Range x3","Long Range x4","Long Range x5","Long Range x6","Long Range x7","Long Range x8","Long Range x9","Long Range x10","Long Range x13","Long Range x16","Long Range x20","Long Range x25","Long Range x30","Long Range x45","Long Range x130","Unlimited Long Range"},nil,"Choose Long Range Number") 
if N == nil then else 
if N ==1 then 
setHexMemory("libunity.so", 0xF8CF6C, "00 00 40 40")
setHexMemory("libunity.so", 0xF8CF70, "00 00 40 40")
setHexMemory("libunity.so", 0xF8CF74, "00 00 40 40")
setHexMemory("libunity.so", 0xF8CF78, "00 00 40 40")
gg.toast("Long Range x3 Activated☑️")
end
if N ==2 then 
setHexMemory("libunity.so", 0xF8CF6C, "00 00 80 40")
setHexMemory("libunity.so", 0xF8CF70, "00 00 80 40")
setHexMemory("libunity.so", 0xF8CF74, "00 00 80 40")
setHexMemory("libunity.so", 0xF8CF78, "00 00 80 40")
gg.toast("Long Range x4 Activated☑️")
end
if N ==3 then 
setHexMemory("libunity.so", 0xF8CF74, "00 00 A0 40")
setHexMemory("libunity.so", 0xF8CF78, "00 00 A0 40")
setHexMemory("libunity.so", 0xF8CF70, "00 00 A0 40")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 A0 40")
gg.toast("Long Range x5 Activated☑️")
end
if N ==4 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 C0 40")
setHexMemory("libunity.so", 0xF8CF74, "00 00 C0 40")
setHexMemory("libunity.so", 0xF8CF70, "00 00 C0 40")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 C0 40")
gg.toast("Long Range x6 Activated☑️")
end
if N ==5 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 E0 40")
setHexMemory("libunity.so", 0xF8CF74, "00 00 E0 40")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 E0 40")
setHexMemory("libunity.so", 0xF8CF70, "00 00 E0 40")
gg.toast("Long Range x7 Activated☑️")
end
if N ==6 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 00 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 00 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 00 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 00 41")
gg.toast("Long Range x8 Activated☑️")
end
if N ==7 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 10 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 10 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 10 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 10 41")
gg.toast("Long Range x9 Activated☑️")
end
if N ==8 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 20 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 20 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 20 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 20 41")
gg.toast("Long Range x10 Activated☑️")
end
if N ==9 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 50 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 50 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 50 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 50 41")
gg.toast("Long Range x13 Activated☑️")
end
if N ==10 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 80 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 80 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 80 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 80 41")
gg.toast("Long Range x16 Activated☑️")
end
if N ==11 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 A0 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 A0 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 A0 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 A0 41")
gg.toast("Long Range x20 Activated☑️")
end
if N ==12 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 C8 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 C8 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 C8 41")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 C8 41")
gg.toast("Long Range x25 Activated☑️")
end
if N ==13 then 
setHexMemory("libunity.so", 0xF8CF6C, "00 00 F0 41")
setHexMemory("libunity.so", 0xF8CF70, "00 00 F0 41")
setHexMemory("libunity.so", 0xF8CF74, "00 00 F0 41")
setHexMemory("libunity.so", 0xF8CF78, "00 00 F0 41")
gg.toast("Long Range x30 Activated☑️")
end
if N ==14 then 
setHexMemory("libunity.so", 0xF8CF78, "00 00 34 42")
setHexMemory("libunity.so", 0xF8CF70, "00 00 34 42")
setHexMemory("libunity.so", 0xF8CF74, "00 00 34 42")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 34 42")
gg.toast("Long Range x45 Activated☑️")
end
if N ==15 then 
setHexMemory("libunity.so", 0xF8CF70, "00 00 02 43")
setHexMemory("libunity.so", 0xF8CF78, "00 00 02 43")
setHexMemory("libunity.so", 0xF8CF74, "00 00 02 43")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 02 43")
gg.toast("Long Range x130 Activated☑️")
end
if N ==16 then 
setHexMemory("libunity.so", 0xF8CF78, "78 86 07 64")
setHexMemory("libunity.so", 0xF8CF70, "78 86 07 64")
setHexMemory("libunity.so", 0xF8CF74, "78 86 07 64")
setHexMemory("libunity.so", 0xF8CF6C, "78 86 07 64")
gg.toast("Unlimited Long Range Activated☑️")
end
end
end
function OFF()
setHexMemory("libunity.so", 0xF8CF78, "00 00 80 3F")
setHexMemory("libunity.so", 0xF8CF70, "00 00 80 3F")
setHexMemory("libunity.so", 0xF8CF74, "00 00 80 3F")
setHexMemory("libunity.so", 0xF8CF6C, "00 00 80 3F")
gg.toast("Long Range Deactivated (OFF)❎")
end
function JUMP()
if NIGA == off then
setHexMemory("libil2cpp.so", 0x13E5908, "C0 03 5F D6")
gg.toast("Disabled Jump ON☑️") 
NIGA = on
else
setHexMemory("libil2cpp.so", 0x13E5908, "FF C3 01 D1")
gg.toast("returned jumping feature❎") 
NIGA = off
end
end

function STOP()
if AI == off then
gg.clearResults()
gg.clearList()
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133A318, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13BDE34, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133F8D0, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133FA40, "20 00 80 D2 C0 03 5F D6")
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
gg.toast("Stop Ai ON☑️") 
AI = on
else
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x13BDE34, "F4 0F 1E F8")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133A318, "00 00 43 39")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133F8D0, "FF 83 02 D1")
gg.setVisible(false) 
setHexMemory("libil2cpp.so", 0x133FA40, "FF 43 02 D1") 
gg.setVisible(false) 
gg.clearResults()
gg.clearList()
gg.toast("Stop AI OFF❎") 
AI = off
end
end




while true do
if gg.isVisible(true) then
AGYT = 1
gg.setVisible(false)
end
if AGYT == 1 then
START()
end
end