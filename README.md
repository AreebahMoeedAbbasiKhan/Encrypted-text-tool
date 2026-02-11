 Encrypted Text Tool (Caesar Cipher) – 8086 Assembly
 Project Overview

This project is an Encrypted Text Tool using Caesar Cipher implemented in 8086 Assembly Language. It allows users to encrypt and decrypt text by shifting ASCII characters with a fixed key value. The project demonstrates low-level cryptographic logic using loops, registers, and DOS interrupts.

It is designed for COAL Lab to strengthen understanding of assembly programming and basic security concepts.
Objectives

Encrypt text using Caesar Cipher.

Decrypt encrypted text back to original.

Demonstrate ASCII manipulation.

Use loops and conditional branching.

Practice registers and memory handling in 8086.

How Caesar Cipher Works

Each character is shifted by a fixed key value.

Encryption:
Encrypted = ASCII + Key

Decryption:
Decrypted = ASCII - Key

This transforms readable text into encrypted form and restores it back using the same key.

Concepts Used
Concept	Description
ASCII Manipulation	Shift characters using numeric key
Loops	Iterate through characters
Conditional Branching	Validate characters
Registers	AL, SI, DI
DOS Interrupts	INT 21h for input/output
Memory Handling	Store and modify strings
 Program Flow

Initialize data segment.

Store plaintext and key.

Encrypt text by adding key.

Display encrypted text.

Decrypt text by subtracting key.

Display decrypted text.

 How To Run

Open the code in EMU8086 / MASM / TASM.

Assemble the program.

Run the executable.

View encrypted and decrypted output.

 Advantages

Introduces basic cryptography.

Strengthens understanding of loops and registers.

Demonstrates ASCII arithmetic.

Useful for COAL lab learning.

Simple and educational encryption system.

Sample Output
Original Text : HELLO
Encrypted Text: KHOOR
Decrypted Text: HELLO

🏁 Conclusion

This project demonstrates how simple encryption works at a low level using 8086 Assembly. It reinforces core COAL concepts such as loops, registers, ASCII manipulation, and control flow while providing a practical cryptography example.
