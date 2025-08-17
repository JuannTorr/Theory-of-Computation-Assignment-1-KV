Lambda Calculus Implementation in Haskell

Authors:

- Juan Esteban Torres Peña
- Jose Miguel Giraldo Lopez
- Sebastian Guerrero Cataño

Environment and Versions:

- Operating System: Windows 10 / 11 (tested)
- Compiler: GHC (Glasgow Haskell Compiler) version 9.x
- Editor/Tools: Visual Studio Code with Haskell extension

Instructions to Run the Solution:

1. Make sure you have GHC installed on your system.
You can check this with: ghc --version

2. Open the project file in Visual Studio Code or any Haskell-compatible IDE.

3. Compile the file with: ghc Lambda.hs -o Lambda

4. Run the program: ./Lambda 
(On Windows, use Lambda.exe)

Detailed Explanation of the Solution:
- This project implements basic concepts of Lambda Calculus using Haskell.
- Church Booleans (true, false) are represented as lambda functions that select their first or second argument.
- Conditional (if-then-else) is defined as a higher-order function that applies a boolean to two alternatives.
- Logical Operators (and, or, not) are expressed through function application and reduction, showing how classical logic can emerge from pure lambda expressions.
- The solution includes step-by-step evaluations to demonstrate how reductions work in both lambda calculus notation and Haskell implementation.
- A simple main function is provided to display results directly in the terminal, making it easier to test and visualize boolean operations and conditional structures.

References:

- Introduction to Functional Programming by Richard Bird
- Types and Programming Languages by Benjamin C. Pierce
- Haskell Documentation
- Educational videos on Lambda Calculus (YouTube / university lectures)
- AI-assisted explanations and debugging (ChatGPT)


