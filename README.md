# Caesar Cipher in Lua

## Code Structure
There are three files of code in this project.    
- `caesar.lua` - contains all the logic of the actual cipher
- `encrypt.lua` - thin wrapper that takes shift and plaintext from console input and outputs encrypted text
- `decrypt.lua` - thin wrapper that takes shift and ciphertext from console input and outputs plaintext text

## How to Use 
Encryption
```
$ lua encrypt.lua
Caesar Cipher Encryption Program
Please enter the shift: 
23
Please enter the plain text (press CTRL-D when done)
Hello, good afternoon!


Encrypted output: 

Ebiil, dlla xcqbokllk!
```
Decryption
```
lua decrypt.lua 
Caesar Cipher Decryption Program
Please enter the shift: 
23
Please enter the encrypted text (press CTRL-D when done)
Ebiil, dlla xcqbokllk!


Decrypted output: 

Hello, good afternoon!
```