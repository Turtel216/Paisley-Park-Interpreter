# Paisley-Park-Interpreter

### A Scheme interpreter written in Haskell

## About 

An interpreter for most of the [The Scheme Programming Language](https://www.scheme.org/), based on the book [Write You A Scheme, Version 2.0](https://wespiser.com/writings/wyas/00_overview.html). The main purpose of the project is to get a better understanding of building applications in Haskell

## Scheme Examples

### List Processing

```lisp
car … (car '(1 2 3)) => 1
cdr … (cdr '(1 2 3)) => (2 3)
cons … (cons 1 '(2 3)) => (1 2 3)
```

### Mathematics

```lisp
(* 60 9) => 540
(+ 10 30 2) => 42
```

### Quote

```lisp
(quote (1 2 3 4)) => (1 2 3 4)
'(1 2 3 4) => (1 2 3 4)
```

### Conditional Statements

```lisp
(if (< 4 5) #f 42) => #f
```

### Lambdas & Anonymous functions

```lisp
((lambda (y) (+ y 2)) 40) => 42
```

### Let Statements

```lisp
(let (x 42) x) => 42
(let (x 2 y 40) (+ x y)) => 42
```

### Begin

```lisp
(begin (define x 413000) (define y (+ x 281)) (+ x y)) => 826281
```

This list of functions is not complete. For a full Scheme specification, see The [R5RS Specification](https://github.com/write-you-a-scheme-v2/scheme/blob/master/sources/r5rs.pdf)

## The Paisley-Park-Interpreter

### Installation

This project uses Cabal as its build tool. Follow these steps to build and run the project:

#### Prerequisites

1. **Install GHC** (the Glasgow Haskell Compiler):
    - [Download and install GHC](https://www.haskell.org/downloads/) if you haven't already.

2. **Install Caba**:
    - Follow the instructions on the [Haskell.org website](https://www.haskell.org/cabal/) to download and set up Cabal.
    - Confirm the installation by running:
    ```bash
    cabal --version
    ```

#### Building the Project 

1. **Clone the Repository**:

```bash
git clone https://github.com/Turtel216/Paisley-Park-Interpreter.github
cd Paisley-Park-Interpreter
```

2. **Install Dependencies**: Run the following command to download and install the necessary dependencies

```bash 
cabal update
```

3. **Build the Project**:

    - Run the build command:
    ```bash 
    cabal build
    ```
    - Cabal will compile the source code and place the executable(s) in the dist-newstyle directory.

4. **Running the Project**: After a successful build, run the project with 

```bash 
cabal run
```

### Usage 
