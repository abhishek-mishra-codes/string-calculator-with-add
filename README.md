# String Calculator

This Ruby project implements a string calculator with an `Add` method, developed using Test-Driven Development (TDD) with RSpec, following the [Incubyte TDD Assessment](https://blog.incubyte.co/blog/tdd-assessment/). The calculator is implemented in a `Calculator` model and handles various input formats for adding numbers.

## Features

- Adds numbers from a string input (e.g., `""` returns `0`, `"1,2"` returns `3`).
- Supports unlimited comma-separated numbers (e.g., `"1,2,3"` returns `6`).
- Handles newlines as delimiters (e.g., `"1\n2,3"` returns `6`).
- Supports custom delimiters (e.g., `"//;\n1;2"` returns `3`).
- Throws exceptions for negative numbers (e.g., `"1,-2"` throws `"negatives not allowed: -2"`).
- Ignores numbers greater than 1000 (e.g., `"2,1001"` returns `2`).
- Supports multi-character and multiple delimiters (e.g., `"//[*][%]\n1*2%3"` returns `6`).

## Prerequisites

- Ruby 3.3.2
- Rails 8.0
- RSpec (for testing)

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/calculator-with-add-functionality.git