# Hello World Operating System

## Overview

This project aims to develop a basic operating system (OS) that boots up and prints "Hello World" to the screen. This OS is being developed using C and Assembly language (ASM) to learn the foundational aspects of OS development, including bootstrapping, kernel initialization, and low-level hardware interaction.

## Why C?
C is a powerful system programming language that offers a balance between high-level readability and low-level control over memory and processor operations. It is widely used in operating system development due to its efficiency, portability, and close-to-hardware capabilities, allowing developers to write code that interacts directly with the underlying hardware while maintaining a level of abstraction that is not possible with pure assembly language.

## Why Assembly Language?
Assembly language (ASM) is a low-level programming language that has a direct correlation with the machine code instructions of a computer's architecture. It provides precise control over the hardware, which is essential for certain aspects of OS development, such as:

- **Bootstrapping:** The initial bootstrapping process, where the OS is loaded into memory and started, requires ASM to interact directly with the system's BIOS or UEFI firmware.
- **Context Switching:** Low-level tasks like context switching between processes or threads require precise control over the CPU registers, which is achievable with ASM.
- **Interrupt Handling:** Handling hardware interrupts and implementing interrupt service routines (ISRs) necessitate the use of ASM to manage hardware interactions efficiently.
