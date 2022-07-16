require "caesar"

print("Caesar Cipher Decryption Program")
print("Please enter the shift: ")

local shift = io.read("*n")

if not CheckIsInteger(shift) then 
    print("Shift must be an integer")
    os.exit(1, true)
end 

print("Please enter the encrypted text (press CTRL-D when done)")

local plaintext = io.read("*a")
local ciphertext = PerformCipher(plaintext, -1 * shift)

print("\n\nDecrypted output: ")
print(ciphertext)