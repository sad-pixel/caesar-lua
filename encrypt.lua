require "caesar"

print("Caesar Cipher Encryption Program")
print("Please enter the shift: ")

local shift = io.read("*n")

if not CheckIsInteger(shift) then 
    print("Shift must be an integer")
    os.exit(1, true)
end 

print("Please enter the plain text (press CTRL-D when done)")

local plaintext = io.read("*a")
local ciphertext = PerformCipher(plaintext, shift)

print("\n\nEncrypted output: ")
print(ciphertext)